if(EXISTS "/usr/src/projects/build/request_handler_dispatcher_test[1]_tests.cmake")
  include("/usr/src/projects/build/request_handler_dispatcher_test[1]_tests.cmake")
else()
  add_test(request_handler_dispatcher_test_NOT_BUILT request_handler_dispatcher_test_NOT_BUILT)
endif()
