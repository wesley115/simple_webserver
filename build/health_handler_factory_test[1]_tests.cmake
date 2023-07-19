add_test( HealthHandlerFactoryTest.HealthFactoryTest /usr/src/projects/build/bin/health_handler_factory_test [==[--gtest_filter=HealthHandlerFactoryTest.HealthFactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( HealthHandlerFactoryTest.HealthFactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( health_handler_factory_test_TESTS HealthHandlerFactoryTest.HealthFactoryTest)
