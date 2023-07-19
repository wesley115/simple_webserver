add_test( StaticHandlerFactoryTest.IncorrectURLStaticFactoryTest /usr/src/projects/build_coverage/bin/static_handler_factory_test [==[--gtest_filter=StaticHandlerFactoryTest.IncorrectURLStaticFactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( StaticHandlerFactoryTest.IncorrectURLStaticFactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( static_handler_factory_test_TESTS StaticHandlerFactoryTest.IncorrectURLStaticFactoryTest)
