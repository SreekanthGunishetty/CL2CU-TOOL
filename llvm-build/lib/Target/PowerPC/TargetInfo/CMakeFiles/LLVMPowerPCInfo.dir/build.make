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
include lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/depend.make

# Include the progress variables for this target.
include lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/flags.make

lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/flags.make
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/TargetInfo/PowerPCTargetInfo.cpp
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenAsmWriter.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenAsmMatcher.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenCodeEmitter.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenMCCodeEmitter.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenRegisterInfo.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenInstrInfo.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenDAGISel.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenFastISel.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenCallingConv.inc
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o: lib/Target/PowerPC/PPCGenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/TargetInfo/PowerPCTargetInfo.cpp

lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/TargetInfo/PowerPCTargetInfo.cpp > CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.i

lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/TargetInfo/PowerPCTargetInfo.cpp -o CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.s

# Object files for target LLVMPowerPCInfo
LLVMPowerPCInfo_OBJECTS = \
"CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o"

# External object files for target LLVMPowerPCInfo
LLVMPowerPCInfo_EXTERNAL_OBJECTS =

lib/libLLVMPowerPCInfo.a: lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/PowerPCTargetInfo.cpp.o
lib/libLLVMPowerPCInfo.a: lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/build.make
lib/libLLVMPowerPCInfo.a: lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMPowerPCInfo.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPowerPCInfo.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMPowerPCInfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/build: lib/libLLVMPowerPCInfo.a

.PHONY : lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/build

lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo && $(CMAKE_COMMAND) -P CMakeFiles/LLVMPowerPCInfo.dir/cmake_clean.cmake
.PHONY : lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/clean

lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/PowerPC/TargetInfo /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/PowerPC/TargetInfo/CMakeFiles/LLVMPowerPCInfo.dir/depend

