add_test( RequestHandlerHealthTest.HealthRequest /usr/src/projects/build/bin/request_handler_health_test [==[--gtest_filter=RequestHandlerHealthTest.HealthRequest]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerHealthTest.HealthRequest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_health_test_TESTS RequestHandlerHealthTest.HealthRequest)
