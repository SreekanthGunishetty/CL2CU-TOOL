# Install script for directory: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/3.4/include" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/altivec.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/ammintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/avxintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/avx2intrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/bmiintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/bmi2intrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/emmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/f16cintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/float.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/fma4intrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/fmaintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/immintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/iso646.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/Intrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/limits.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/lzcntintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/mm3dnow.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/mmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/mm_malloc.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/nmmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/pmmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/popcntintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/prfchwintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/rdseedintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/rtmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/shaintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/smmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/stdalign.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/stdarg.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/stdbool.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/stddef.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/stdint.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/stdnoreturn.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/tbmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/tgmath.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/tmmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/varargs.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/wmmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/__wmmintrin_aes.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/__wmmintrin_pclmul.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/x86intrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/xmmintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/xopintrin.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/cpuid.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/unwind.h"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/lib/Headers/module.map"
    "/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/clang/3.4/include/arm_neon.h"
    )
endif()

