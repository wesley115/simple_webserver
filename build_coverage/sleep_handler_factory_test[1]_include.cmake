if(EXISTS "/usr/src/projects/build_coverage/sleep_handler_factory_test[1]_tests.cmake")
  include("/usr/src/projects/build_coverage/sleep_handler_factory_test[1]_tests.cmake")
else()
  add_test(sleep_handler_factory_test_NOT_BUILT sleep_handler_factory_test_NOT_BUILT)
endif()
