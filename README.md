#### 练习题
* cmake
  1. [最简单的cMakeLists.txt](./cmake/section1)
  2. [编译根目录下多个文件](./cmake/section2)
  3. [编译多个目录下文件](./cmake/section3)
  4. [编译多个目录下文件,生成链接库](./cmake/section4)
  5. [cmake时生成.h头文件](./cmake/section5)
  6. [PROJECT_SOURCE_DIR和PROJECT_BINARY_DIR的区别](./cmake/section6)
  7. [INSTALL命令的使用](./cmake/section7)
  8. [TEST的使用](./cmake/section8)
  9. [使用宏简化TEST配置代码](./cmake/section9)
  10. [CheckFunctionExists检测系统是否支持某函数](./cmake/section10)
  11. [cpack生成包](./cmake/section11)

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

* go
  1. [web输出helloWorld](./go/section1)