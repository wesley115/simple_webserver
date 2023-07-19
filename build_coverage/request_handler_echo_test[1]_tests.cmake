add_test( RequestHandlerEchoTest.EchoRequest /usr/src/projects/build_coverage/bin/request_handler_echo_test [==[--gtest_filter=RequestHandlerEchoTest.EchoRequest]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerEchoTest.EchoRequest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_echo_test_TESTS RequestHandlerEchoTest.EchoRequest)
