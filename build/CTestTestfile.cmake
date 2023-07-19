# CMake generated Testfile for 
# Source directory: /usr/src/projects
# Build directory: /usr/src/projects/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/usr/src/projects/build/server_lib_test[1]_include.cmake")
include("/usr/src/projects/build/session_lib_test[1]_include.cmake")
include("/usr/src/projects/build/config_parser_lib_test[1]_include.cmake")
include("/usr/src/projects/build/logger_test[1]_include.cmake")
include("/usr/src/projects/build/reply_lib_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_echo_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_static_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_dispatcher_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_404_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_health_test[1]_include.cmake")
include("/usr/src/projects/build/request_404_handler_factory_test[1]_include.cmake")
include("/usr/src/projects/build/sleep_handler_factory_test[1]_include.cmake")
include("/usr/src/projects/build/static_handler_factory_test[1]_include.cmake")
include("/usr/src/projects/build/echo_handler_factory_test[1]_include.cmake")
include("/usr/src/projects/build/health_handler_factory_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_crud_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_sleep_test[1]_include.cmake")
include("/usr/src/projects/build/crud_handler_factory_test[1]_include.cmake")
include("/usr/src/projects/build/request_handler_sleep_test[2]_include.cmake")
add_test(integration_tests "bash" "/usr/src/projects/tests/integration_tests/integration_tests.sh")
set_tests_properties(integration_tests PROPERTIES  WORKING_DIRECTORY "/usr/src/projects/tests/integration_tests" _BACKTRACE_TRIPLES "/usr/src/projects/CMakeLists.txt;213;add_test;/usr/src/projects/CMakeLists.txt;0;")
subdirs("googletest")
