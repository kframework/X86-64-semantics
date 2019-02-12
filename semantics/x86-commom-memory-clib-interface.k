requires "common-utils.k"
requires "common-error.k"
requires "library/common-c-library.k"

module COMMON-CONFIGURATION
  imports X86-CONFIGURATION
endmodule

module COMMON-MEMORY-CLIB-INTERFACE
  imports COMMON-UTILS
  imports COMMON-C-LIBRARY
endmodule

