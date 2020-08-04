# Install script for directory: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/" FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/config\\.h$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/" FILES_MATCHING REGEX "/CMakeFiles$" EXCLUDE REGEX "/[^/]*\\.inc$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/include/clang-c" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/utils/TableGen/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/include/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/lib/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/runtime/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/test/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/cmake_install.cmake")
  include("/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/docs/cmake_install.cmake")

endif()

