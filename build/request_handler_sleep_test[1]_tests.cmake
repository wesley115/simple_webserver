add_test( RequestHandlerSleepTest.SleepRequest /usr/src/projects/build/bin/request_handler_sleep_test [==[--gtest_filter=RequestHandlerSleepTest.SleepRequest]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerSleepTest.SleepRequest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_sleep_test_TESTS RequestHandlerSleepTest.SleepRequest)
