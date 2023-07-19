add_test( RequestCrudHandlerFactoryTest.RequestCrudFactoryTest /usr/src/projects/build_coverage/bin/crud_handler_factory_test [==[--gtest_filter=RequestCrudHandlerFactoryTest.RequestCrudFactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestCrudHandlerFactoryTest.RequestCrudFactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( crud_handler_factory_test_TESTS RequestCrudHandlerFactoryTest.RequestCrudFactoryTest)
