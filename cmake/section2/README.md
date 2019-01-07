cMakeLists.txt
```
# 要求版本号
cmake_minimum_required(VERSION 2.6)

# 项目名称
project(mathDemo)

# 生成可执行文件
# 需要的所有文件 此处和下面都可以顺利执行
# add_executable(add main.c math.c)

# 指定当前目录 到一个变量SOURCE_DIR
aux_source_directory(. SOURCE_DIR)

# 将目录下的文件生成可执行文件
add_executable(add ${SOURCE_DIR})
```

目录下运行`cMake .`和`make` 会生成可执行文件`add`,貌似相当于`cc main.c math.c`

tips: 在根目录运行`cmake .`之后会生成一堆make相关的文件,怎么清理?aha 俺不知道...
  
  但是,可以在生成之前 在根目录创建一个子文件夹 用于存放生成的文件.
  eg:
  ```
  $ mkdir build
  $ cd build
  $ cmake ..
  $ make
  ```
  这样生成的相关文件会在[build](./cmake/section2/build)子目录.

我们之后的例子 就是基于这样的一个build目录存放`cmake`命令生成的文件 用于区分我们的源码和`cmake`命令生成的源码, 你可以随意删除build中的内容 并使用cmake命令重新生成,或者新创建一个你自己喜欢的文件夹.

```
.
├── README.md
├── build  # <-- 用于存放cmake命令生成的文件
│   ├── CMakeCache.txt
│   ├── CMakeFiles
│   ├── Makefile
│   ├── add
│   └── cmake_install.cmake
├── cMakeLists.txt # <-- 源码
├── main.c # <-- 源码
├── math.c # <-- 源码
└── math.h # <-- 源码
```