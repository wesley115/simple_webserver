if(EXISTS "/usr/src/projects/build/request_handler_static_test[1]_tests.cmake")
  include("/usr/src/projects/build/request_handler_static_test[1]_tests.cmake")
else()
  add_test(request_handler_static_test_NOT_BUILT request_handler_static_test_NOT_BUILT)
endif()