# Install script for directory: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-config/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/opt/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-dis/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-mc/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llc/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-ar/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-nm/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-size/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-cov/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-link/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lli/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-diff/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/macho-dump/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-objdump/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-readobj/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-rtdyld/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-dwarfdump/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/bugpoint/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/bugpoint-passes/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-bcanalyzer/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-stress/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-mcmarkup/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-symbolizer/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-c-test/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/obj2yaml/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/yaml2obj/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/gold/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/msbuild/cmake_install.cmake")

endif()

