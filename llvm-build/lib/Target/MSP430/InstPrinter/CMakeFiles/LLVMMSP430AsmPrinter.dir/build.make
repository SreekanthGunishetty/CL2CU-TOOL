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
include lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/depend.make

# Include the progress variables for this target.
include lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/flags.make

lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/flags.make
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/MSP430/InstPrinter/MSP430InstPrinter.cpp
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/MSP430GenRegisterInfo.inc
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/MSP430GenInstrInfo.inc
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/MSP430GenAsmWriter.inc
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/MSP430GenDAGISel.inc
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/MSP430GenCallingConv.inc
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o: lib/Target/MSP430/MSP430GenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/MSP430/InstPrinter/MSP430InstPrinter.cpp

lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/MSP430/InstPrinter/MSP430InstPrinter.cpp > CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.i

lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/MSP430/InstPrinter/MSP430InstPrinter.cpp -o CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.s

# Object files for target LLVMMSP430AsmPrinter
LLVMMSP430AsmPrinter_OBJECTS = \
"CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o"

# External object files for target LLVMMSP430AsmPrinter
LLVMMSP430AsmPrinter_EXTERNAL_OBJECTS =

lib/libLLVMMSP430AsmPrinter.a: lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/MSP430InstPrinter.cpp.o
lib/libLLVMMSP430AsmPrinter.a: lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/build.make
lib/libLLVMMSP430AsmPrinter.a: lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMMSP430AsmPrinter.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMSP430AsmPrinter.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMMSP430AsmPrinter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/build: lib/libLLVMMSP430AsmPrinter.a

.PHONY : lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/build

lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMMSP430AsmPrinter.dir/cmake_clean.cmake
.PHONY : lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/clean

lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/MSP430/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/MSP430/InstPrinter/CMakeFiles/LLVMMSP430AsmPrinter.dir/depend

