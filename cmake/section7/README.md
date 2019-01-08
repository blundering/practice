这一章我们试一下 `make install`

首先在math目录下的`cMakeLists.txt`中增加
```
install (TARGETS Math DESTINATION bin)
install (FILES math.h DESTINATION include)
```
指定生成的链接库和math.h install时候的位置

然后在跟目录下的`cMakeLists.txt`中增加
```
install (TARGETS add DESTINATION bin)
install (FILES "${PROJECT_BINARY_DIR}/main.h" DESTINATION include)
```
指定生成的可执行文件和main.h install时候的位置

`DESTINATION` 将会使用 `cmake`命令后面的参数 `CMAKE_INSTALL_PREFIX`
比如我们在 build文件夹中执行 
```
$ cmake -DCMAKE_INSTALL_PREFIX=/tmp/usr ..
$ make
$ make install
```
会返回如下结果
```
➜  build git:(master) ✗ make install
[ 50%] Built target Math
[100%] Built target add
Install the project...
-- Install configuration: ""
-- Installing: /tmp/usr/bin/add
-- Installing: /tmp/usr/include/main.h
-- Installing: /tmp/usr/bin/libMath.a
-- Installing: /tmp/usr/include/math.h
```
对比我们新加入的 配置和命令后的参数 得到如下结论.

`install (TARGETS sth DESTINATION place)`
会将sth安装到`-DCMAKE_INSTALL_PREFIX=`执行的目录的place

那么我们如果cmake时候不传这个参数 会安装到哪里呢? 让我们试试
```
$ cmake ..
$ make
$ make install
```

```
➜  build git:(master) ✗ make install                                                                                                           [21:32:32]
[ 50%] Built target Math
[100%] Built target add
Install the project...
-- Install configuration: ""
-- Installing: /usr/local/bin/add
-- Installing: /usr/local/include/main.h
-- Installing: /usr/local/bin/libMath.a
-- Installing: /usr/local/include/math.h
```
aha~~~ 默认是 /usr/local