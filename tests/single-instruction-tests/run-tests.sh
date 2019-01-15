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

	if [ "$cleankstate" == "1" ]; then
		cat filelist.txt | parallel "echo; echo cleaning: {}; echo ====; cd {}; make cleankstate; cd .."
	fi

	if [ "$kstate" == "1" ]; then
		# Collect  instructon semantics
		rm -rf $K_DIR/underTestInstructions/*
                cp $K_DIR/pseudoTestInstructions/* $K_DIR/underTestInstructions/
		cat filelist.txt | parallel "echo; echo collect semantics: {}; echo ====; cd {}; make collect; cd -"
		
		# Compile the collected semantics
                ../../scripts/kompile.pl --backend java

		# Parallel test runs
                cat filelist.txt | parallel -j 5 "echo; echo running kstate: {}; echo ====; cd {}; make kstate; cd -"
	fi

	if [ "$cleanxstate" == "1" ]; then
		cat filelist.txt | parallel "echo; echo cleaning: {}; echo ====; cd {}; make cleanxstate; cd -"
	fi

	if [ "$xstate" == "1" ]; then
		cat filelist.txt | parallel "echo; echo runing xstate: {}; echo ====; cd {}; make xstate; cd -"
	fi

	if [ "$compare" == "1" ]; then
		cat filelist.txt | parallel "echo; echo running compare: {}; echo ====; cd {}; make compare; cd -"
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
	--compare)
		shift
		compare=1
		;;
	--all)
		shift
		cleanxstate=1
		kstate=1
		cleankstate=1
		xstate=1
                compare=1
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
