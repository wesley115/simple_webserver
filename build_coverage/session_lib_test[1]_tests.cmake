add_test( SessionTest.make_session /usr/src/projects/build_coverage/bin/session_lib_test [==[--gtest_filter=SessionTest.make_session]==] --gtest_also_run_disabled_tests)
set_tests_properties( SessionTest.make_session PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( SessionTest.return_socket /usr/src/projects/build_coverage/bin/session_lib_test [==[--gtest_filter=SessionTest.return_socket]==] --gtest_also_run_disabled_tests)
set_tests_properties( SessionTest.return_socket PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( SessionTest.start_session /usr/src/projects/build_coverage/bin/session_lib_test [==[--gtest_filter=SessionTest.start_session]==] --gtest_also_run_disabled_tests)
set_tests_properties( SessionTest.start_session PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( SessionTest.handle_write_session /usr/src/projects/build_coverage/bin/session_lib_test [==[--gtest_filter=SessionTest.handle_write_session]==] --gtest_also_run_disabled_tests)
set_tests_properties( SessionTest.handle_write_session PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( session_lib_test_TESTS SessionTest.make_session SessionTest.return_socket SessionTest.start_session SessionTest.handle_write_session)