# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anonix/new_tool/CL2CU/CU2CL/llvm-build

# Include any dependencies generated for this target.
include lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/depend.make

# Include the progress variables for this target.
include lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/flags.make

lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.o: lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/flags.make
lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/CppBackend/CPPBackend.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/CppBackend/CPPBackend.cpp

lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/CppBackend/CPPBackend.cpp > CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.i

lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/CppBackend/CPPBackend.cpp -o CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.s

# Object files for target LLVMCppBackendCodeGen
LLVMCppBackendCodeGen_OBJECTS = \
"CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.o"

# External object files for target LLVMCppBackendCodeGen
LLVMCppBackendCodeGen_EXTERNAL_OBJECTS =

lib/libLLVMCppBackendCodeGen.a: lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/CPPBackend.cpp.o
lib/libLLVMCppBackendCodeGen.a: lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/build.make
lib/libLLVMCppBackendCodeGen.a: lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../libLLVMCppBackendCodeGen.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend && $(CMAKE_COMMAND) -P CMakeFiles/LLVMCppBackendCodeGen.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMCppBackendCodeGen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/build: lib/libLLVMCppBackendCodeGen.a

.PHONY : lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/build

lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend && $(CMAKE_COMMAND) -P CMakeFiles/LLVMCppBackendCodeGen.dir/cmake_clean.cmake
.PHONY : lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/clean

lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/CppBackend /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/CppBackend/CMakeFiles/LLVMCppBackendCodeGen.dir/depend
