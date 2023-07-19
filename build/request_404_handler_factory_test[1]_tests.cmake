add_test( Request404HandlerFactoryTest.Request404FactoryTest /usr/src/projects/build/bin/request_404_handler_factory_test [==[--gtest_filter=Request404HandlerFactoryTest.Request404FactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( Request404HandlerFactoryTest.Request404FactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_404_handler_factory_test_TESTS Request404HandlerFactoryTest.Request404FactoryTest)
