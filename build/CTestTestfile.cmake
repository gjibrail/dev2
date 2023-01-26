# CMake generated Testfile for 
# Source directory: /home/nanobot1/dev2/src/cpp_pubsub
# Build directory: /home/nanobot1/dev2/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/copyright.xunit.xml" "--package-name" "cpp_pubsub" "--output-file" "/home/nanobot1/dev2/build/ament_copyright/copyright.txt" "--command" "/opt/ros/eloquent/bin/ament_copyright" "--xunit-file" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/nanobot1/dev2/src/cpp_pubsub")
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/cppcheck.xunit.xml" "--package-name" "cpp_pubsub" "--output-file" "/home/nanobot1/dev2/build/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/eloquent/bin/ament_cppcheck" "--xunit-file" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/cppcheck.xunit.xml")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "120" WORKING_DIRECTORY "/home/nanobot1/dev2/src/cpp_pubsub")
add_test(cpplint "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/cpplint.xunit.xml" "--package-name" "cpp_pubsub" "--output-file" "/home/nanobot1/dev2/build/ament_cpplint/cpplint.txt" "--command" "/opt/ros/eloquent/bin/ament_cpplint" "--xunit-file" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/cpplint.xunit.xml")
set_tests_properties(cpplint PROPERTIES  LABELS "cpplint;linter" TIMEOUT "120" WORKING_DIRECTORY "/home/nanobot1/dev2/src/cpp_pubsub")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/lint_cmake.xunit.xml" "--package-name" "cpp_pubsub" "--output-file" "/home/nanobot1/dev2/build/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/eloquent/bin/ament_lint_cmake" "--xunit-file" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/nanobot1/dev2/src/cpp_pubsub")
add_test(uncrustify "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/uncrustify.xunit.xml" "--package-name" "cpp_pubsub" "--output-file" "/home/nanobot1/dev2/build/ament_uncrustify/uncrustify.txt" "--command" "/opt/ros/eloquent/bin/ament_uncrustify" "--xunit-file" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/uncrustify.xunit.xml")
set_tests_properties(uncrustify PROPERTIES  LABELS "uncrustify;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/nanobot1/dev2/src/cpp_pubsub")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/xmllint.xunit.xml" "--package-name" "cpp_pubsub" "--output-file" "/home/nanobot1/dev2/build/ament_xmllint/xmllint.txt" "--command" "/opt/ros/eloquent/bin/ament_xmllint" "--xunit-file" "/home/nanobot1/dev2/build/test_results/cpp_pubsub/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/nanobot1/dev2/src/cpp_pubsub")
