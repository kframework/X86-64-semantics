#!/bin/bash
assembler=$(mktemp)
gcc $1 -fno-diagnostics-show-caret -fdiagnostics-color=never    -O0  -w  -lm  -march=haswell -fno-asynchronous-unwind-tables -mlong-double-64 -mno-80387 -S -o /dev/stdout |
    ../scripts/remove_directives.pl --file /dev/stdin > $assembler &&
    ../scripts/collect_instructions_semantics.pl --file $assembler > /dev/null 2>&1 &&
    ../scripts/process_spec.pl --compile &&
    krun $assembler
rm $assembler
