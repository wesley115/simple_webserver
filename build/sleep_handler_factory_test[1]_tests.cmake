add_test( SleepHandlerFactoryTest.SleepFactoryTest /usr/src/projects/build/bin/sleep_handler_factory_test [==[--gtest_filter=SleepHandlerFactoryTest.SleepFactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( SleepHandlerFactoryTest.SleepFactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( sleep_handler_factory_test_TESTS SleepHandlerFactoryTest.SleepFactoryTest)
