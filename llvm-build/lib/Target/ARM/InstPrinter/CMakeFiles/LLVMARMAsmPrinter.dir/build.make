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
include lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/depend.make

# Include the progress variables for this target.
include lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/flags.make

lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/flags.make
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/InstPrinter/ARMInstPrinter.cpp
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenRegisterInfo.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenInstrInfo.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenCodeEmitter.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenMCCodeEmitter.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenMCPseudoLowering.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenAsmWriter.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenAsmMatcher.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenDAGISel.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenFastISel.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenCallingConv.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenSubtargetInfo.inc
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o: lib/Target/ARM/ARMGenDisassemblerTables.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/InstPrinter/ARMInstPrinter.cpp

lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/InstPrinter/ARMInstPrinter.cpp > CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.i

lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/InstPrinter/ARMInstPrinter.cpp -o CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.s

# Object files for target LLVMARMAsmPrinter
LLVMARMAsmPrinter_OBJECTS = \
"CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o"

# External object files for target LLVMARMAsmPrinter
LLVMARMAsmPrinter_EXTERNAL_OBJECTS =

lib/libLLVMARMAsmPrinter.a: lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/ARMInstPrinter.cpp.o
lib/libLLVMARMAsmPrinter.a: lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/build.make
lib/libLLVMARMAsmPrinter.a: lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMARMAsmPrinter.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMARMAsmPrinter.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMARMAsmPrinter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/build: lib/libLLVMARMAsmPrinter.a

.PHONY : lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/build

lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMARMAsmPrinter.dir/cmake_clean.cmake
.PHONY : lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/clean

lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/ARM/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/ARM/InstPrinter/CMakeFiles/LLVMARMAsmPrinter.dir/depend

