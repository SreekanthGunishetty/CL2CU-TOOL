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
include lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/depend.make

# Include the progress variables for this target.
include lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/flags.make

lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/flags.make
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/InstPrinter/MipsInstPrinter.cpp
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenRegisterInfo.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenInstrInfo.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenDisassemblerTables.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenCodeEmitter.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenMCCodeEmitter.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenAsmWriter.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenDAGISel.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenCallingConv.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenSubtargetInfo.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenAsmMatcher.inc
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o: lib/Target/Mips/MipsGenMCPseudoLowering.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/InstPrinter/MipsInstPrinter.cpp

lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/InstPrinter/MipsInstPrinter.cpp > CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.i

lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/InstPrinter/MipsInstPrinter.cpp -o CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.s

# Object files for target LLVMMipsAsmPrinter
LLVMMipsAsmPrinter_OBJECTS = \
"CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o"

# External object files for target LLVMMipsAsmPrinter
LLVMMipsAsmPrinter_EXTERNAL_OBJECTS =

lib/libLLVMMipsAsmPrinter.a: lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/MipsInstPrinter.cpp.o
lib/libLLVMMipsAsmPrinter.a: lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/build.make
lib/libLLVMMipsAsmPrinter.a: lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMMipsAsmPrinter.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMipsAsmPrinter.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMMipsAsmPrinter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/build: lib/libLLVMMipsAsmPrinter.a

.PHONY : lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/build

lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMipsAsmPrinter.dir/cmake_clean.cmake
.PHONY : lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/clean

lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/Mips/InstPrinter/CMakeFiles/LLVMMipsAsmPrinter.dir/depend

