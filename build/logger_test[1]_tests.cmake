add_test( LoggerTest.LogTrace /usr/src/projects/build/bin/logger_test [==[--gtest_filter=LoggerTest.LogTrace]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.LogTrace PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( LoggerTest.LogDebug /usr/src/projects/build/bin/logger_test [==[--gtest_filter=LoggerTest.LogDebug]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.LogDebug PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( LoggerTest.LogInfo /usr/src/projects/build/bin/logger_test [==[--gtest_filter=LoggerTest.LogInfo]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.LogInfo PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( LoggerTest.LogWarning /usr/src/projects/build/bin/logger_test [==[--gtest_filter=LoggerTest.LogWarning]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.LogWarning PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( LoggerTest.LogError /usr/src/projects/build/bin/logger_test [==[--gtest_filter=LoggerTest.LogError]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.LogError PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( LoggerTest.LogFatal /usr/src/projects/build/bin/logger_test [==[--gtest_filter=LoggerTest.LogFatal]==] --gtest_also_run_disabled_tests)
set_tests_properties( LoggerTest.LogFatal PROPERTIES WORKING_DIRECTORY /usr/src/projects/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( logger_test_TESTS LoggerTest.LogTrace LoggerTest.LogDebug LoggerTest.LogInfo LoggerTest.LogWarning LoggerTest.LogError LoggerTest.LogFatal)
