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
include lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/depend.make

# Include the progress variables for this target.
include lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/flags.make

lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/flags.make
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/Disassembler/ARMDisassembler.cpp
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenRegisterInfo.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenInstrInfo.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenCodeEmitter.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenMCCodeEmitter.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenMCPseudoLowering.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenAsmWriter.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenAsmMatcher.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenDAGISel.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenFastISel.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenCallingConv.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenSubtargetInfo.inc
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o: lib/Target/ARM/ARMGenDisassemblerTables.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/Disassembler/ARMDisassembler.cpp

lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/Disassembler/ARMDisassembler.cpp > CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.i

lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/Disassembler/ARMDisassembler.cpp -o CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.s

# Object files for target LLVMARMDisassembler
LLVMARMDisassembler_OBJECTS = \
"CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o"

# External object files for target LLVMARMDisassembler
LLVMARMDisassembler_EXTERNAL_OBJECTS =

lib/libLLVMARMDisassembler.a: lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/ARMDisassembler.cpp.o
lib/libLLVMARMDisassembler.a: lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/build.make
lib/libLLVMARMDisassembler.a: lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMARMDisassembler.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler && $(CMAKE_COMMAND) -P CMakeFiles/LLVMARMDisassembler.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMARMDisassembler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/build: lib/libLLVMARMDisassembler.a

.PHONY : lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/build

lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler && $(CMAKE_COMMAND) -P CMakeFiles/LLVMARMDisassembler.dir/cmake_clean.cmake
.PHONY : lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/clean

lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/Disassembler /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/ARM/Disassembler/CMakeFiles/LLVMARMDisassembler.dir/depend

