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
include lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/depend.make

# Include the progress variables for this target.
include lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/flags.make

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/flags.make
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86ATTInstPrinter.cpp
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenRegisterInfo.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenDisassemblerTables.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenInstrInfo.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenAsmWriter.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenAsmWriter1.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenAsmMatcher.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenDAGISel.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenFastISel.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenCallingConv.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o: lib/Target/X86/X86GenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86ATTInstPrinter.cpp

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86ATTInstPrinter.cpp > CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.i

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86ATTInstPrinter.cpp -o CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.s

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/flags.make
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86IntelInstPrinter.cpp
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenRegisterInfo.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenDisassemblerTables.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenInstrInfo.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenAsmWriter.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenAsmWriter1.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenAsmMatcher.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenDAGISel.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenFastISel.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenCallingConv.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o: lib/Target/X86/X86GenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86IntelInstPrinter.cpp

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86IntelInstPrinter.cpp > CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.i

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86IntelInstPrinter.cpp -o CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.s

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/flags.make
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86InstComments.cpp
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenRegisterInfo.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenDisassemblerTables.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenInstrInfo.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenAsmWriter.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenAsmWriter1.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenAsmMatcher.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenDAGISel.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenFastISel.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenCallingConv.inc
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o: lib/Target/X86/X86GenSubtargetInfo.inc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86InstComments.cpp

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86InstComments.cpp > CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.i

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter/X86InstComments.cpp -o CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.s

# Object files for target LLVMX86AsmPrinter
LLVMX86AsmPrinter_OBJECTS = \
"CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o" \
"CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o" \
"CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o"

# External object files for target LLVMX86AsmPrinter
LLVMX86AsmPrinter_EXTERNAL_OBJECTS =

lib/libLLVMX86AsmPrinter.a: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86ATTInstPrinter.cpp.o
lib/libLLVMX86AsmPrinter.a: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86IntelInstPrinter.cpp.o
lib/libLLVMX86AsmPrinter.a: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/X86InstComments.cpp.o
lib/libLLVMX86AsmPrinter.a: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/build.make
lib/libLLVMX86AsmPrinter.a: lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../../libLLVMX86AsmPrinter.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMX86AsmPrinter.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMX86AsmPrinter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/build: lib/libLLVMX86AsmPrinter.a

.PHONY : lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/build

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter && $(CMAKE_COMMAND) -P CMakeFiles/LLVMX86AsmPrinter.dir/cmake_clean.cmake
.PHONY : lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/clean

lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/lib/Target/X86/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Target/X86/InstPrinter/CMakeFiles/LLVMX86AsmPrinter.dir/depend

