add_test( RequestHandler404Test._404Request /usr/src/projects/build/bin/request_handler_404_test [==[--gtest_filter=RequestHandler404Test._404Request]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandler404Test._404Request PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_404_test_TESTS RequestHandler404Test._404Request)
