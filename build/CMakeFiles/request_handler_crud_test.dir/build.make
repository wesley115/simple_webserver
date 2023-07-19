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
include CMakeFiles/request_handler_crud_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/request_handler_crud_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/request_handler_crud_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/request_handler_crud_test.dir/flags.make

CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o: CMakeFiles/request_handler_crud_test.dir/flags.make
CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o: ../tests/request_handler_crud_test.cc
CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o: CMakeFiles/request_handler_crud_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o -MF CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o.d -o CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o -c /usr/src/projects/tests/request_handler_crud_test.cc

CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/projects/tests/request_handler_crud_test.cc > CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.i

CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/projects/tests/request_handler_crud_test.cc -o CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.s

# Object files for target request_handler_crud_test
request_handler_crud_test_OBJECTS = \
"CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o"

# External object files for target request_handler_crud_test
request_handler_crud_test_EXTERNAL_OBJECTS =

bin/request_handler_crud_test: CMakeFiles/request_handler_crud_test.dir/tests/request_handler_crud_test.cc.o
bin/request_handler_crud_test: CMakeFiles/request_handler_crud_test.dir/build.make
bin/request_handler_crud_test: lib/libgtest_maind.a
bin/request_handler_crud_test: librequest_handler_lib.a
bin/request_handler_crud_test: libhttp_lib.a
bin/request_handler_crud_test: libconfig_parser_lib.a
bin/request_handler_crud_test: liblogger_lib.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_log.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_log_setup.a
bin/request_handler_crud_test: lib/libgtestd.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_log.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_regex.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_thread.a
bin/request_handler_crud_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.a
bin/request_handler_crud_test: CMakeFiles/request_handler_crud_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/projects/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/request_handler_crud_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/request_handler_crud_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=request_handler_crud_test -D TEST_EXECUTABLE=/usr/src/projects/build/bin/request_handler_crud_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/usr/src/projects/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=request_handler_crud_test_TESTS -D CTEST_FILE=/usr/src/projects/build/request_handler_crud_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/request_handler_crud_test.dir/build: bin/request_handler_crud_test
.PHONY : CMakeFiles/request_handler_crud_test.dir/build

CMakeFiles/request_handler_crud_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/request_handler_crud_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/request_handler_crud_test.dir/clean

CMakeFiles/request_handler_crud_test.dir/depend:
	cd /usr/src/projects/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/projects /usr/src/projects /usr/src/projects/build /usr/src/projects/build /usr/src/projects/build/CMakeFiles/request_handler_crud_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/request_handler_crud_test.dir/depend

