#!/bin/bash 
set -e

THIS_DIR="$(pwd)"
K_DIR=$THIS_DIR/../semantics/

for filename in Programs/*; do # https://stackoverflow.com/questions/20796200/how-to-iterate-over-files-in-a-directory-with-bash
    echo $filename
    if [[ -d $filename ]]; then
        TEST_DIR="$THIS_DIR/$filename"
        cd $TEST_DIR
        ../../../scripts/collect_instructions_semantics.pl --file test.s
        cd $K_DIR
        ../scripts/process_spec.pl --compile
        cd $TEST_DIR
        make cleankstate
        make kstate
        cd $THIS_DIR
    fi
done

