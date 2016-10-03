set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  IRReader
  BitReader
  BitWriter
  Core
  Support
)

add_llvm_tool(allin
  allin.cpp
)
target_link_libraries(allin stack_deconstructor max_stack_height)

#add_definitions(${LLVM_DEFINITIONS})
