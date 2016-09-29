set(LLVM_LINK_COMPONENTS
  ${LLVM_TARGETS_TO_BUILD}
  IRReader
  BitReader
  BitWriter
  Core
  Support
)

add_llvm_tool(allina
  allina.cpp
)
target_link_libraries(allina stack_deconstructor)

#add_definitions(${LLVM_DEFINITIONS})
