add_test( MemeHandlerFactoryTest.MemeFactoryTest /usr/src/projects/build/bin/meme_handler_factory_test [==[--gtest_filter=MemeHandlerFactoryTest.MemeFactoryTest]==] --gtest_also_run_disabled_tests)
set_tests_properties( MemeHandlerFactoryTest.MemeFactoryTest PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( meme_handler_factory_test_TESTS MemeHandlerFactoryTest.MemeFactoryTest)
