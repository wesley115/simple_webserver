add_test( RequestHandlerMemeTest.CreateMemeHandler /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.CreateMemeHandler]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.CreateMemeHandler PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandlePostCreateSuccess /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandlePostCreateSuccess]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandlePostCreateSuccess PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandlePostCreateFailure /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandlePostCreateFailure]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandlePostCreateFailure PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandlePostInvalidJson /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandlePostInvalidJson]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandlePostInvalidJson PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandlePostlikeSuccess /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandlePostlikeSuccess]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandlePostlikeSuccess PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandlePostlikeFailure /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandlePostlikeFailure]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandlePostlikeFailure PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandleGETpopularity /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandleGETpopularity]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandleGETpopularity PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandleGETtime /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandleGETtime]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandleGETtime PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandleGETlistdefault /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandleGETlistdefault]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandleGETlistdefault PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerMemeTest.RunHandleGETlistFailure /usr/src/projects/build/bin/request_handler_meme_test [==[--gtest_filter=RequestHandlerMemeTest.RunHandleGETlistFailure]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerMemeTest.RunHandleGETlistFailure PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_meme_test_TESTS RequestHandlerMemeTest.CreateMemeHandler RequestHandlerMemeTest.RunHandlePostCreateSuccess RequestHandlerMemeTest.RunHandlePostCreateFailure RequestHandlerMemeTest.RunHandlePostInvalidJson RequestHandlerMemeTest.RunHandlePostlikeSuccess RequestHandlerMemeTest.RunHandlePostlikeFailure RequestHandlerMemeTest.RunHandleGETpopularity RequestHandlerMemeTest.RunHandleGETtime RequestHandlerMemeTest.RunHandleGETlistdefault RequestHandlerMemeTest.RunHandleGETlistFailure)