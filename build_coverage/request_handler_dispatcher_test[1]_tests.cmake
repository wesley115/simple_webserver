add_test( RequestHandlerDispatcherTest.GetHandlerEcho /usr/src/projects/build_coverage/bin/request_handler_dispatcher_test [==[--gtest_filter=RequestHandlerDispatcherTest.GetHandlerEcho]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerDispatcherTest.GetHandlerEcho PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerDispatcherTest.GetHandler404 /usr/src/projects/build_coverage/bin/request_handler_dispatcher_test [==[--gtest_filter=RequestHandlerDispatcherTest.GetHandler404]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerDispatcherTest.GetHandler404 PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerDispatcherTest.GetHandlerHealth /usr/src/projects/build_coverage/bin/request_handler_dispatcher_test [==[--gtest_filter=RequestHandlerDispatcherTest.GetHandlerHealth]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerDispatcherTest.GetHandlerHealth PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerDispatcherTest.GetHandlerCrud /usr/src/projects/build_coverage/bin/request_handler_dispatcher_test [==[--gtest_filter=RequestHandlerDispatcherTest.GetHandlerCrud]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerDispatcherTest.GetHandlerCrud PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( RequestHandlerDispatcherTest.GetHandlerStatic /usr/src/projects/build_coverage/bin/request_handler_dispatcher_test [==[--gtest_filter=RequestHandlerDispatcherTest.GetHandlerStatic]==] --gtest_also_run_disabled_tests)
set_tests_properties( RequestHandlerDispatcherTest.GetHandlerStatic PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( request_handler_dispatcher_test_TESTS RequestHandlerDispatcherTest.GetHandlerEcho RequestHandlerDispatcherTest.GetHandler404 RequestHandlerDispatcherTest.GetHandlerHealth RequestHandlerDispatcherTest.GetHandlerCrud RequestHandlerDispatcherTest.GetHandlerStatic)
