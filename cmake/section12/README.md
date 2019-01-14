这一章 我还没有从昨天懵逼的状态中恢复...

根据官方文档的操作我在根目录的 `cMakeLists.txt` 最后一步我们尝试 ctest 上传结果到 某公共 dashboard 网站

```
# 需要的 include (CTest) 之前我们已经引用过了.
# 设置 dashboard 中显示的名称
set(CTEST_PROJECT_NAME "rubin's add")
```
进入 build 目录执行
```
$ cmake ..
$ make
$ ctest -D Experimental
```
我们看下结果
```
➜  build git:(master) ✗ ctest -D Experimental
   Site: bogon
   Build name: Darwin-c++
Create new tag: 20190114-1036 - Experimental
Configure project
   Each . represents 1024 bytes of output
    . Size of output: 0K
Build project
   Each symbol represents 1024 bytes of output.
   '!' represents an error and '*' a warning.
    . Size of output: 0K
   0 Compiler errors
   0 Compiler warnings
Test project /Users/rubin/practice/cmake/section12/build
    Start 1: add1_2
1/6 Test #1: add1_2 ...........................   Passed    0.00 sec
    Start 2: add0_0
2/6 Test #2: add0_0 ...........................   Passed    0.00 sec
    Start 3: add1_-1
3/6 Test #3: add1_-1 ..........................   Passed    0.00 sec
    Start 4: add1_-11
4/6 Test #4: add1_-11 .........................   Passed    0.00 sec
    Start 5: add2_2
5/6 Test #5: add2_2 ...........................   Passed    0.01 sec
    Start 6: add11_-1
6/6 Test #6: add11_-1 .........................   Passed    0.00 sec

100% tests passed, 0 tests failed out of 6

Total Test time (real) =   0.03 sec
Performing coverage
 Cannot find any coverage files. Ignoring Coverage request.
Submit files (using http)
   Using HTTP submit method
   Drop site:http://
   Submit failed, waiting 5 seconds...
   Retry submission: Attempt 1 of 3
   Submit failed, waiting 5 seconds...
   Retry submission: Attempt 2 of 3
   Submit failed, waiting 5 seconds...
   Retry submission: Attempt 3 of 3
   Error when uploading file: /Users/rubin/practice/cmake/section12/build/Testing/20190114-1036/Build.xml
   Error message was: Bad URL
   Problems when submitting via HTTP
Errors while running CTest
```

