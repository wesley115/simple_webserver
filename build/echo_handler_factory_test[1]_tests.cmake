add_test( EchoHandlerFactoryTest.EchoFactoryTest /usr/src/projects/build/bin/echo_handler_factory_test [==[--gtest_filter=EchoHandlerFactoryTest.EchoFactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( EchoHandlerFactoryTest.EchoFactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( echo_handler_factory_test_TESTS EchoHandlerFactoryTest.EchoFactoryTest)
