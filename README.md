#### 练习题
* cmake
  1. [最简单的cMakeLists.txt](./cmake/section1)
  2. [编译根目录下多个文件](./cmake/section2)
  3. [编译多个目录下文件](./cmake/section3)
  4. [编译多个目录下文件,生成链接库](./cmake/section4)
  5. [cmake时生成.h头文件](./cmake/section5)

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
