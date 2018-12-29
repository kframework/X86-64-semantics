#!/bin/bash
gcc $1 -fno-diagnostics-show-caret -fdiagnostics-color=never    -O0  -w  -lm  -march=haswell -fno-asynchronous-unwind-tables -mlong-double-64 -mno-80387 -S -o test.s &&
    ../scripts/remove_directives.pl --file test.s > test_out.s &&
    ../scripts/collect_instructions_semantics.pl --file test_out.s &&
    ../scripts/process_spec.pl --compile &&
    krun test_out.s
