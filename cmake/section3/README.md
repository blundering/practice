这一节我们将 `math.h math.c` 移入一个子文件夹 math 中
然后,我们进入build目录 运行:
```
$ cmake ..
$ make
$ ./add
```
程序正常运行.

那我们来看看cMakeLists.txt跟上一节有什么区别?

```
# 声明cmake最低版本要求
cmake_minimum_required(VERSION 2.6)

# 定义项目名称
project(multiDirDemo)

# 添加子目录
# 并将名称保存到 SOURCE_DIR 变量
aux_source_directory(./math SOURCE_DIR)

# 生成可执行文件
add_executable(add main.c ${SOURCE_DIR})
```

对比之后可以猜测
1. 生成可执行可执行文件的`add_executable`方法第一个参数为生成的可执行文件名称, 后面可以添加多个参数为需要链接的文件.
2. `aux_source_directory` 可以将第一个参数目录下的所有文件存在第二个参数变量中.

这两节 帮我们理解了 上面两个命令, 实际使用中可能不会这么用, 下面一节我们试试库的生成和链接.