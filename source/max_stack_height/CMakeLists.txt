# LLVM provide a CMake function to build a LLVM Module from sources, use it!
add_llvm_loadable_module(LLVMmax_stack_height max_stack_height.cpp)
add_library(max_stack_height STATIC max_stack_height.cpp)

# And it's still possible to use regular CMake linking stuff
target_link_libraries(LLVMmax_stack_height utils)
