这一章我们试一下 `make test`

根目录的`cMakeLists.txt`中增加以下配置
```
# 测试 `CTest`不区分大小写?
include (CTest) 
# 看看程序是否能跑起来
add_test(add1_2 add)

# 匹配输出是否包含指定结果
add_test(add1_2 add 1 2)
set_tests_properties(add1_2 PROPERTIES PASS_REGULAR_EXPRESSION "1 and 2 is 3")

add_test(add0_0 add 0 0)
set_tests_properties(add0_0 PROPERTIES PASS_REGULAR_EXPRESSION "0 is 0")

add_test(add1_-1 add 1 -1)
set_tests_properties(add1_-1 PROPERTIES PASS_REGULAR_EXPRESSION "is 0")

add_test(add1_-11 add 1 -11)
set_tests_properties(add1_-11 PROPERTIES PASS_REGULAR_EXPRESSION "1 and -11 is 0")
```

同样我们在build目录依次运行
```
$ cmake ..
$ make
$ make test
```
输出结果为
```
➜  build git:(master) ✗ make test
Running tests...
Test project /Users/rubin/practice/cmake/section8/build
    Start 1: add1_2
1/4 Test #1: add1_2 ...........................   Passed    0.00 sec
    Start 2: add0_0
2/4 Test #2: add0_0 ...........................   Passed    0.00 sec
    Start 3: add1_-1
3/4 Test #3: add1_-1 ..........................   Passed    0.00 sec
    Start 4: add1_-11
4/4 Test #4: add1_-11 .........................***Failed  Required regular expression not found.Regex=[1 and -11 is 0
]  0.00 sec

75% tests passed, 1 tests failed out of 4

Total Test time (real) =   0.02 sec

The following tests FAILED:
          4 - add1_-11 (Failed)
Errors while running CTest
make: *** [test] Error 8
```

aha~ 有什么感想?总结一下吧