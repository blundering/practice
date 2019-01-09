# CMake generated Testfile for 
# Source directory: /Users/rubin/practice/cmake/section8
# Build directory: /Users/rubin/practice/cmake/section8/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(add1_2 "add" "1" "2")
set_tests_properties(add1_2 PROPERTIES  PASS_REGULAR_EXPRESSION "1 and 2 is 3")
add_test(add0_0 "add" "0" "0")
set_tests_properties(add0_0 PROPERTIES  PASS_REGULAR_EXPRESSION "0 is 0")
add_test(add1_-1 "add" "1" "-1")
set_tests_properties(add1_-1 PROPERTIES  PASS_REGULAR_EXPRESSION "is 0")
add_test(add1_-11 "add" "1" "-11")
set_tests_properties(add1_-11 PROPERTIES  PASS_REGULAR_EXPRESSION "1 and -11 is 0")
subdirs("math")
