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
CMAKE_SOURCE_DIR = /usr/src/projects

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/src/projects/build

# Include any dependencies generated for this target.
include CMakeFiles/session_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/session_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/session_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/session_lib.dir/flags.make

CMakeFiles/session_lib.dir/src/session.cc.o: CMakeFiles/session_lib.dir/flags.make
CMakeFiles/session_lib.dir/src/session.cc.o: ../src/session.cc
CMakeFiles/session_lib.dir/src/session.cc.o: CMakeFiles/session_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/session_lib.dir/src/session.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/session_lib.dir/src/session.cc.o -MF CMakeFiles/session_lib.dir/src/session.cc.o.d -o CMakeFiles/session_lib.dir/src/session.cc.o -c /usr/src/projects/src/session.cc

CMakeFiles/session_lib.dir/src/session.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/session_lib.dir/src/session.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/projects/src/session.cc > CMakeFiles/session_lib.dir/src/session.cc.i

CMakeFiles/session_lib.dir/src/session.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/session_lib.dir/src/session.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/projects/src/session.cc -o CMakeFiles/session_lib.dir/src/session.cc.s

# Object files for target session_lib
session_lib_OBJECTS = \
"CMakeFiles/session_lib.dir/src/session.cc.o"

# External object files for target session_lib
session_lib_EXTERNAL_OBJECTS =

libsession_lib.a: CMakeFiles/session_lib.dir/src/session.cc.o
libsession_lib.a: CMakeFiles/session_lib.dir/build.make
libsession_lib.a: CMakeFiles/session_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsession_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/session_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/session_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/session_lib.dir/build: libsession_lib.a
.PHONY : CMakeFiles/session_lib.dir/build

CMakeFiles/session_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/session_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/session_lib.dir/clean

CMakeFiles/session_lib.dir/depend:
	cd /usr/src/projects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/projects /usr/src/projects /usr/src/projects/build /usr/src/projects/build /usr/src/projects/build/CMakeFiles/session_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/session_lib.dir/depend

