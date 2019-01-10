这一章我们使用宏 来减少重复输入
```
# 旧方法. 如果测试多个 要重复写多次
add_test(add1_-11 add 1 -11)
set_tests_properties(add1_-11 PROPERTIES PASS_REGULAR_EXPRESSION "1 and -11 is 0")

# 定义宏简化测试操作
macro(do_test arg1 arg2 result)
    add_test(add${arg1}_${arg2} add ${arg1} ${arg2})
    set_tests_properties(add${arg1}_${arg2} PROPERTIES PASS_REGULAR_EXPRESSION ${result})
endmacro(do_test)

# 使用宏
do_test(2 2 "2 and 2 is 3")
do_test(0 0 "0 is not 0")
do_test(11 -1 "is 10")
do_test(1 -11 "1 and -11 is -10")
```

好了 进入build目录执行
```
$ cmake ..
$ make
$ make test
```
看一下结果是不是跟上一章一样呢
```
➜  build git:(master) ✗ make test 
Running tests...
Test project /Users/rubin/practice/cmake/section9/build
    Start 1: add1_2
1/6 Test #1: add1_2 ...........................   Passed    0.00 sec
    Start 2: add0_0
2/6 Test #2: add0_0 ...........................***Failed  Required regular expression not found.Regex=[0 is not 0
]  0.00 sec
    Start 3: add1_-1
3/6 Test #3: add1_-1 ..........................   Passed    0.00 sec
    Start 4: add1_-11
4/6 Test #4: add1_-11 .........................   Passed    0.00 sec
    Start 5: add2_2
5/6 Test #5: add2_2 ...........................***Failed  Required regular expression not found.Regex=[2 and 2 is 3
]  0.00 sec
    Start 6: add11_-1
6/6 Test #6: add11_-1 .........................   Passed    0.00 sec

67% tests passed, 2 tests failed out of 6

Total Test time (real) =   0.03 sec

The following tests FAILED:
          2 - add0_0 (Failed)
          5 - add2_2 (Failed)
Errors while running CTest
make: *** [test] Error 8
```
