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
include lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/depend.make

# Include the progress variables for this target.
include lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/flags.make

lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/flags.make
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/AsmParser/MipsAsmParser.cpp
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenRegisterInfo.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenInstrInfo.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenDisassemblerTables.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenCodeEmitter.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenMCCodeEmitter.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenAsmWriter.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenDAGISel.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenCallingConv.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenSubtargetInfo.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenAsmMatcher.inc
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o: lib/Target/Mips/MipsGenMCPseudoLowering.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/AsmParser/MipsAsmParser.cpp

lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/AsmParser/MipsAsmParser.cpp > CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.i

lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/AsmParser/MipsAsmParser.cpp -o CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.s

# Object files for target LLVMMipsAsmParser
LLVMMipsAsmParser_OBJECTS = \
"CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o"

# External object files for target LLVMMipsAsmParser
LLVMMipsAsmParser_EXTERNAL_OBJECTS =

lib/libLLVMMipsAsmParser.a: lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/MipsAsmParser.cpp.o
lib/libLLVMMipsAsmParser.a: lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/build.make
lib/libLLVMMipsAsmParser.a: lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMMipsAsmParser.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMipsAsmParser.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMMipsAsmParser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/build: lib/libLLVMMipsAsmParser.a

.PHONY : lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/build

lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMipsAsmParser.dir/cmake_clean.cmake
.PHONY : lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/clean

lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/Mips/AsmParser /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/Mips/AsmParser/CMakeFiles/LLVMMipsAsmParser.dir/depend

