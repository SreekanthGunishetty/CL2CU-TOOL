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
include lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/depend.make

# Include the progress variables for this target.
include lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/flags.make

lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/flags.make
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/AsmParser/PPCAsmParser.cpp
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenAsmWriter.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenAsmMatcher.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenCodeEmitter.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenMCCodeEmitter.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenRegisterInfo.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenInstrInfo.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenDAGISel.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenFastISel.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenCallingConv.inc
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o: lib/Target/PowerPC/PPCGenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/AsmParser/PPCAsmParser.cpp

lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/AsmParser/PPCAsmParser.cpp > CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.i

lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/AsmParser/PPCAsmParser.cpp -o CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.s

# Object files for target LLVMPowerPCAsmParser
LLVMPowerPCAsmParser_OBJECTS = \
"CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o"

# External object files for target LLVMPowerPCAsmParser
LLVMPowerPCAsmParser_EXTERNAL_OBJECTS =

lib/libLLVMPowerPCAsmParser.a: lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/PPCAsmParser.cpp.o
lib/libLLVMPowerPCAsmParser.a: lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/build.make
lib/libLLVMPowerPCAsmParser.a: lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMPowerPCAsmParser.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPowerPCAsmParser.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMPowerPCAsmParser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/build: lib/libLLVMPowerPCAsmParser.a

.PHONY : lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/build

lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPowerPCAsmParser.dir/cmake_clean.cmake
.PHONY : lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/clean

lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/AsmParser /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/PowerPC/AsmParser/CMakeFiles/LLVMPowerPCAsmParser.dir/depend

