# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wsy/cpp/textquery

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wsy/cpp/textquery/build

# Include any dependencies generated for this target.
include exec/CMakeFiles/exec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include exec/CMakeFiles/exec.dir/compiler_depend.make

# Include the progress variables for this target.
include exec/CMakeFiles/exec.dir/progress.make

# Include the compile flags for this target's objects.
include exec/CMakeFiles/exec.dir/flags.make

exec/CMakeFiles/exec.dir/main.cpp.o: exec/CMakeFiles/exec.dir/flags.make
exec/CMakeFiles/exec.dir/main.cpp.o: ../exec/main.cpp
exec/CMakeFiles/exec.dir/main.cpp.o: exec/CMakeFiles/exec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wsy/cpp/textquery/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object exec/CMakeFiles/exec.dir/main.cpp.o"
	cd /home/wsy/cpp/textquery/build/exec && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT exec/CMakeFiles/exec.dir/main.cpp.o -MF CMakeFiles/exec.dir/main.cpp.o.d -o CMakeFiles/exec.dir/main.cpp.o -c /home/wsy/cpp/textquery/exec/main.cpp

exec/CMakeFiles/exec.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/exec.dir/main.cpp.i"
	cd /home/wsy/cpp/textquery/build/exec && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wsy/cpp/textquery/exec/main.cpp > CMakeFiles/exec.dir/main.cpp.i

exec/CMakeFiles/exec.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/exec.dir/main.cpp.s"
	cd /home/wsy/cpp/textquery/build/exec && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wsy/cpp/textquery/exec/main.cpp -o CMakeFiles/exec.dir/main.cpp.s

# Object files for target exec
exec_OBJECTS = \
"CMakeFiles/exec.dir/main.cpp.o"

# External object files for target exec
exec_EXTERNAL_OBJECTS =

../bin/exec: exec/CMakeFiles/exec.dir/main.cpp.o
../bin/exec: exec/CMakeFiles/exec.dir/build.make
../bin/exec: ../lib/libstatic_lib.a
../bin/exec: exec/CMakeFiles/exec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wsy/cpp/textquery/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/exec"
	cd /home/wsy/cpp/textquery/build/exec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
exec/CMakeFiles/exec.dir/build: ../bin/exec
.PHONY : exec/CMakeFiles/exec.dir/build

exec/CMakeFiles/exec.dir/clean:
	cd /home/wsy/cpp/textquery/build/exec && $(CMAKE_COMMAND) -P CMakeFiles/exec.dir/cmake_clean.cmake
.PHONY : exec/CMakeFiles/exec.dir/clean

exec/CMakeFiles/exec.dir/depend:
	cd /home/wsy/cpp/textquery/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wsy/cpp/textquery /home/wsy/cpp/textquery/exec /home/wsy/cpp/textquery/build /home/wsy/cpp/textquery/build/exec /home/wsy/cpp/textquery/build/exec/CMakeFiles/exec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : exec/CMakeFiles/exec.dir/depend

