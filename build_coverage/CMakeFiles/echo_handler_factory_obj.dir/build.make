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
CMAKE_BINARY_DIR = /usr/src/projects/build_coverage

# Include any dependencies generated for this target.
include CMakeFiles/echo_handler_factory_obj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/echo_handler_factory_obj.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/echo_handler_factory_obj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/echo_handler_factory_obj.dir/flags.make

CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o: CMakeFiles/echo_handler_factory_obj.dir/flags.make
CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o: ../src/request_handler/echo_handler_factory.cc
CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o: CMakeFiles/echo_handler_factory_obj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/projects/build_coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o -MF CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o.d -o CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o -c /usr/src/projects/src/request_handler/echo_handler_factory.cc

CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/projects/src/request_handler/echo_handler_factory.cc > CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.i

CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/projects/src/request_handler/echo_handler_factory.cc -o CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.s

echo_handler_factory_obj: CMakeFiles/echo_handler_factory_obj.dir/src/request_handler/echo_handler_factory.cc.o
echo_handler_factory_obj: CMakeFiles/echo_handler_factory_obj.dir/build.make
.PHONY : echo_handler_factory_obj

# Rule to build all files generated by this target.
CMakeFiles/echo_handler_factory_obj.dir/build: echo_handler_factory_obj
.PHONY : CMakeFiles/echo_handler_factory_obj.dir/build

CMakeFiles/echo_handler_factory_obj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/echo_handler_factory_obj.dir/cmake_clean.cmake
.PHONY : CMakeFiles/echo_handler_factory_obj.dir/clean

CMakeFiles/echo_handler_factory_obj.dir/depend:
	cd /usr/src/projects/build_coverage && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/projects /usr/src/projects /usr/src/projects/build_coverage /usr/src/projects/build_coverage /usr/src/projects/build_coverage/CMakeFiles/echo_handler_factory_obj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/echo_handler_factory_obj.dir/depend

