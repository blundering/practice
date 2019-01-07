在上一章的配置中我们如果使用
```
configure_file(
    "${PROJECT_SOURCE_DIR}/main.h.in"
    "${PROJECT_BINARY_DIR}/main.h"
)
```

会在使用`make`命令时,产生一个错误
```
➜  build git:(master) ✗ make                                                                                                                   [21:37:29]
Scanning dependencies of target Math
[ 25%] Building C object math/CMakeFiles/Math.dir/math.c.o
[ 50%] Linking C static library libMath.a
[ 50%] Built target Math
Scanning dependencies of target add
[ 75%] Building C object CMakeFiles/add.dir/main.c.o
/Users/rubin/practice/cmake/section6/main.c:3:10: fatal error: 'main.h' file not found
#include "main.h"
         ^~~~~~~~
1 error generated.
make[2]: *** [CMakeFiles/add.dir/main.c.o] Error 1
make[1]: *** [CMakeFiles/add.dir/all] Error 2
make: *** [all] Error 2
```
错误报告`fatal error: 'main.h' file not found` main.h找不到?
这时候 查看我们的文件夹下的结构 发现`cmake` 命令是将`main.h`生成在了build目录.

**那么让我们来试试`include_dirctories("${PROJECT_BINARY_DIR}")`将binary目录加入include path 用于程序加载生成的.h头文件**

现在来依次执行
```
$ mkdir newBuild
$ cd newBuild
$ cmake ..
$ make
```
错误是不是消失了乜^^