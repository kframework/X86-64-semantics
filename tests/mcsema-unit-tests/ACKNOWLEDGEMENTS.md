The test-cases in this directory are testing the semantics of individual instructions as follows:
1. We execute an instruction using a number of test-inputs (or input CPU states) on host machine using GDB scripts and collect the output CPU states.
2. We execute the same instruction using its semantics in K using the same test-input as above and match the output CPU state with the collected states at step (1).

We acknowledge that all the test-inputs (or CPU states) are borrowed from the project McSema (https://github.com/trailofbits/mcsema).
