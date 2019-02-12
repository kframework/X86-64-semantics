requires "verification-lemmas.k"
requires "common-configuration.k"
requires "common-utils.k"
requires "common-error.k"
requires "library/common-c-library.k"

module COMMON
  imports COMMON-CONFIGURATION
  imports VERIFICATION-LEMMAS
  imports COMMON-UTILS
  imports COMMON-C-LIBRARY

  // Needed by keq
  syntax Bool ::= vars(List)
endmodule
