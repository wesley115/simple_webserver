add_test( RequestHandlerCrudTest.CreateCrudHandler /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.CreateCrudHandler]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.CreateCrudHandler PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePostCreate /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePostCreate]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePostCreate PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePostConflict /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePostConflict]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePostConflict PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePostInvalidJson /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePostInvalidJson]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePostInvalidJson PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePostNewEntity /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePostNewEntity]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePostNewEntity PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePutSuccess /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePutSuccess]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePutSuccess PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePutIDFailure /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePutIDFailure]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePutIDFailure PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandlePutSubDirectoryFailure /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandlePutSubDirectoryFailure]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandlePutSubDirectoryFailure PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleGetSuccess /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleGetSuccess]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleGetSuccess PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleDeleteExists /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleDeleteExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleDeleteExists PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleDeleteNotExists /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleDeleteNotExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleDeleteNotExists PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleDeleteDirExists /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleDeleteDirExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleDeleteDirExists PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleDeleteDirNotExists /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleDeleteDirNotExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleDeleteDirNotExists PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleGetListExists /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleGetListExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleGetListExists PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerCrudTest.RunHandleGetListNotExists /usr/src/projects/build_coverage/bin/request_handler_crud_test [==[--gtest_filter=RequestHandlerCrudTest.RunHandleGetListNotExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerCrudTest.RunHandleGetListNotExists PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_crud_test_TESTS RequestHandlerCrudTest.CreateCrudHandler RequestHandlerCrudTest.RunHandlePostCreate RequestHandlerCrudTest.RunHandlePostConflict RequestHandlerCrudTest.RunHandlePostInvalidJson RequestHandlerCrudTest.RunHandlePostNewEntity RequestHandlerCrudTest.RunHandlePutSuccess RequestHandlerCrudTest.RunHandlePutIDFailure RequestHandlerCrudTest.RunHandlePutSubDirectoryFailure RequestHandlerCrudTest.RunHandleGetSuccess RequestHandlerCrudTest.RunHandleDeleteExists RequestHandlerCrudTest.RunHandleDeleteNotExists RequestHandlerCrudTest.RunHandleDeleteDirExists RequestHandlerCrudTest.RunHandleDeleteDirNotExists RequestHandlerCrudTest.RunHandleGetListExists RequestHandlerCrudTest.RunHandleGetListNotExists)
