cmake_minimum_required(VERSION 3.0)

# LLVM detection part
# The user is supposed to set this to a valid llvm 3.7 install root
set(LLVM_ROOT "" CACHE PATH "Root of LLVM install.")

# A bit of a sanity check:
if(NOT EXISTS ${LLVM_ROOT}/include/llvm )
    message(FATAL_ERROR
            "LLVM_ROOT (${LLVM_ROOT}) is invalid")
endif()

if(NOT EXISTS ${LLVM_ROOT}/bin/clang )
    message(FATAL_ERROR
        "clang not compiled with LLVM")
endif()

# Load various LLVM config stuff,
# see http://llvm.org/docs/CMake.html#developing-llvm-passes-out-of-source
list(APPEND CMAKE_PREFIX_PATH
     "${LLVM_ROOT}/share/llvm/cmake")
find_package(LLVM REQUIRED CONFIG)

SET(CMAKE_CXX_FLAGS "-Wall -fno-rtti")

# AddLLVM needs these
set(LLVM_RUNTIME_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/bin)
set(LLVM_LIBRARY_OUTPUT_INTDIR ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/lib)  

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(HandleLLVMOptions) # load additional config
include(AddLLVM) # used to add our own modules

# propagate LLVM-specific variables to this project
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

# Following commands are specific to this tutorial
include_directories(${CMAKE_SOURCE_DIR}/include)

add_subdirectory(libs)
add_subdirectory(tools)
add_subdirectory(test)

# testing part relies on lit, dependency is required to avoid cmake bloat
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
