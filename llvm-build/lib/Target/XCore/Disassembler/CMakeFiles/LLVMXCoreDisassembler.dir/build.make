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
include lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/depend.make

# Include the progress variables for this target.
include lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/flags.make

lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/flags.make
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/XCore/Disassembler/XCoreDisassembler.cpp
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenRegisterInfo.inc
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenInstrInfo.inc
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenDisassemblerTables.inc
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenAsmWriter.inc
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenDAGISel.inc
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenCallingConv.inc
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o: lib/Target/XCore/XCoreGenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/XCore/Disassembler/XCoreDisassembler.cpp

lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/XCore/Disassembler/XCoreDisassembler.cpp > CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.i

lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/XCore/Disassembler/XCoreDisassembler.cpp -o CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.s

# Object files for target LLVMXCoreDisassembler
LLVMXCoreDisassembler_OBJECTS = \
"CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o"

# External object files for target LLVMXCoreDisassembler
LLVMXCoreDisassembler_EXTERNAL_OBJECTS =

lib/libLLVMXCoreDisassembler.a: lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/XCoreDisassembler.cpp.o
lib/libLLVMXCoreDisassembler.a: lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/build.make
lib/libLLVMXCoreDisassembler.a: lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../libLLVMXCoreDisassembler.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler && $(CMAKE_COMMAND) -P CMakeFiles/LLVMXCoreDisassembler.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMXCoreDisassembler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/build: lib/libLLVMXCoreDisassembler.a

.PHONY : lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/build

lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler && $(CMAKE_COMMAND) -P CMakeFiles/LLVMXCoreDisassembler.dir/cmake_clean.cmake
.PHONY : lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/clean

lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/XCore/Disassembler /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/XCore/Disassembler/CMakeFiles/LLVMXCoreDisassembler.dir/depend
