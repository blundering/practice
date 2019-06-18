#### 练习题
* cmake
    1. [最简单的 cMakeLists.txt](./cmake/section1)
    2. [编译根目录下多个文件](./cmake/section2)
    3. [编译多个目录下文件](./cmake/section3)
    4. [编译多个目录下文件,生成链接库](./cmake/section4)
    5. [cmake 时生成 .h 头文件](./cmake/section5)
    6. [PROJECT_SOURCE_DIR 和 PROJECT_BINARY_DIR 的区别](./cmake/section6)
    7. [INSTALL 命令的使用](./cmake/section7)
    8. [TEST 的使用](./cmake/section8)
    9. [使用宏简化 TEST 配置代码](./cmake/section9)
    10. [CheckFunctionExists 检测系统是否支持某函数](./cmake/section10)
    11. [cpack 生成包](./cmake/section11)

  tips: 在根目录运行 `cmake .` 之后会生成一堆make相关的文件,怎么清理? aha 俺不知道...
  
  但是,可以在生成之前 在根目录创建一个子文件夹 用于存放生成的文件.
  eg:
  ```
  $ mkdir build
  $ cd build
  $ cmake ..
  $ make
  ```
  这样生成的相关文件会在 [build](./cmake/section2/build) 子目录.

* go
    1. [web 服务端之输出 helloWorld](./go/section1)
    2. [客户端之获取接口 json 并转为变量](./go/section2)
    3. [web 服务端之使用模板](./go/section3)
    4. [web 服务端之使用模板创建一个表格](./go/section4)

* php
    1. [composer 常用命令](./php/)
    2. [composer 编写步骤](./php/)

* php-github-practice
    1.  [基于 foundation-sdk 编写的sdk](./php/foundation-sdk)

* rust
    1. [rust 之 hello world](./rust/1-rustc)
    2. [cargo new 创建包](./rust/2-cargo)
    3. [guessing game 猜数字游戏](./rust/3-guessing-game)
    4. [struct](./rust/4-struct)
    5. [minigrep](./rust/5-minigrep)