#!/bin/bash
set -e

THIS_DIR="$(pwd)"
K_DIR=$THIS_DIR/../../semantics/

cleanxstate=
cleankstate=
xstate=
kstate=

usage() {
	echo "Usage: run_tests.sh --cleankstate | --cleanxstate | --xstate \
      | --kstate | --compare"
}

execute() {
	echo

	if [ "$cleanxstate" == "1" ]; then
		cat filelist.txt | parallel "echo; echo cleaning: {}; echo ====; cd {}; make cleanxstate; cd .."
		exit 0
	fi

	if [ "$cleankstate" == "1" ]; then
		cat filelist.txt | parallel "echo; echo cleaning: {}; echo ====; cd {}; make cleankstate; cd .."
		exit 0
	fi

	if [ "$xstate" == "1" ]; then
		cat filelist.txt | parallel "echo; echo runing xstate: {}; echo ====; cd {}; make cleanxstate; make xstate; cd .."
		exit 0
	fi

	if [ "$kstate" == "1" ]; then
                rm -rf $K_DIR/underTestInstructions/*
                cp $K_DIR/pseudoTestInstructions/* $K_DIR/underTestInstructions/
		cat filelist.txt | parallel "../../scripts/collect_instructions_semantics.pl --file {}/test.s"
		# Compile the collected semantics
		cd $K_DIR	
                ../scripts/process_spec.pl --compile --backend java
		cd $THIS_DIR

                # Parallel test runs
                cat filelist.txt | parallel -j 5 "echo; echo running kstate: {}; echo ====; cd {}; make cleankstate; make kstate; cd .."
		exit 0
	fi

	if [ "$compare" == "1" ]; then
		cat filelist.txt | parallel "echo; echo running compare: {}; echo ====; cd {}; make compare; cd .."
		exit 0
	fi
	echo
}

while [ "$1" != "" ]; do
	case $1 in
	--cleanxstate)
		shift
		cleanxstate=1
		;;
	--cleankstate)
		shift
		cleankstate=1
		;;
	--xstate)
		shift
		xstate=1
		;;
	--kstate)
		shift
		kstate=1
		;;
	--help)
		usage
		exit
		;;
	*)
		usage
		exit 1
		;;
	esac
done

execute
