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
include CMakeFiles/server_lib_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server_lib_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server_lib_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server_lib_test.dir/flags.make

CMakeFiles/server_lib_test.dir/tests/server_test.cc.o: CMakeFiles/server_lib_test.dir/flags.make
CMakeFiles/server_lib_test.dir/tests/server_test.cc.o: ../tests/server_test.cc
CMakeFiles/server_lib_test.dir/tests/server_test.cc.o: CMakeFiles/server_lib_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server_lib_test.dir/tests/server_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server_lib_test.dir/tests/server_test.cc.o -MF CMakeFiles/server_lib_test.dir/tests/server_test.cc.o.d -o CMakeFiles/server_lib_test.dir/tests/server_test.cc.o -c /usr/src/projects/tests/server_test.cc

CMakeFiles/server_lib_test.dir/tests/server_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server_lib_test.dir/tests/server_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/projects/tests/server_test.cc > CMakeFiles/server_lib_test.dir/tests/server_test.cc.i

CMakeFiles/server_lib_test.dir/tests/server_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server_lib_test.dir/tests/server_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/projects/tests/server_test.cc -o CMakeFiles/server_lib_test.dir/tests/server_test.cc.s

# Object files for target server_lib_test
server_lib_test_OBJECTS = \
"CMakeFiles/server_lib_test.dir/tests/server_test.cc.o"

# External object files for target server_lib_test
server_lib_test_EXTERNAL_OBJECTS =

bin/server_lib_test: CMakeFiles/server_lib_test.dir/tests/server_test.cc.o
bin/server_lib_test: CMakeFiles/server_lib_test.dir/build.make
bin/server_lib_test: libserver_lib.a
bin/server_lib_test: libsession_lib.a
bin/server_lib_test: librequest_handler_lib.a
bin/server_lib_test: libhttp_lib.a
bin/server_lib_test: libconfig_parser_lib.a
bin/server_lib_test: liblogger_lib.a
bin/server_lib_test: lib/libgtest_maind.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_log_setup.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_log.a
bin/server_lib_test: lib/libgtestd.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_regex.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_thread.a
bin/server_lib_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.a
bin/server_lib_test: CMakeFiles/server_lib_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/server_lib_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_lib_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=server_lib_test -D TEST_EXECUTABLE=/usr/src/projects/build/bin/server_lib_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/usr/src/projects/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=server_lib_test_TESTS -D CTEST_FILE=/usr/src/projects/build/server_lib_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/server_lib_test.dir/build: bin/server_lib_test
.PHONY : CMakeFiles/server_lib_test.dir/build

CMakeFiles/server_lib_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server_lib_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server_lib_test.dir/clean

CMakeFiles/server_lib_test.dir/depend:
	cd /usr/src/projects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/projects /usr/src/projects /usr/src/projects/build /usr/src/projects/build /usr/src/projects/build/CMakeFiles/server_lib_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server_lib_test.dir/depend

