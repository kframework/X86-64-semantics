Directed Test Case Generation for x86 Instruction Decoding
===
The x86 architecture, its instructions and their encodings are
defined in the AMD[1] and INTEL[2] x86 manuals, but is also baked into the legacy microprocessors that support an instance of this architecture. Existing emulation platforms, such as the Bochs IA-32 Emulator[11], can be used as additional references for the specification of the architecture. Extracting the exact specification for a given instruction from the manuals can involve some ambiguities and is not straight-forward in all cases[7]. Some efforts to formalize the definitions of the x86 instruction set architecture in a rigorous framework have been attempted in [3], [5], [6], [7], but each of these efforts had to focus on just some aspects of the architecture. For academic purposes, a simplified architecture has been introduced as Y86 [10], to abstract from many of the artifacts of the X86 architecture.


