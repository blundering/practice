入门CMakeLists.txt
```
cmake_minimum_required (VERSION 2.6)
project (fib)
add_executable(fib fib.c)
```
1. 三行说明,先让我们假装是函数调用(签名是函数名, 括号里是以空格分割的参数)
  那么**函数名不区分大小写**
2. 第一行`cmake_minimum_required (VERSION 2.6)`声明要求的cmake最低版本为2.6
3. 第二行`project(fib)` 给工程起个名
4. 第三行`add_executable(fib fib.c)`将fib.c生成可执行文件fib


现在有了一个源文件 和一个 CMakeLists.txt
```
cmake/section1/
├── CMakeLists.txt
└── fib.c
```
在目录中运行`cmake .` 之后会生成其他文件 然后可以继续使用`make`命令生成需要的fib可执行文件
```
cmake/section1/
├── CMakeCache.txt
├── CMakeFiles
│   ├── 3.12.4
│   │   ├── CMakeCCompiler.cmake
│   │   ├── CMakeCXXCompiler.cmake
│   │   ├── CMakeDetermineCompilerABI_C.bin
│   │   ├── CMakeDetermineCompilerABI_CXX.bin
│   │   ├── CMakeSystem.cmake
│   │   ├── CompilerIdC
│   │   │   ├── CMakeCCompilerId.c
│   │   │   ├── a.out
│   │   │   └── tmp
│   │   └── CompilerIdCXX
│   │       ├── CMakeCXXCompilerId.cpp
│   │       ├── a.out
│   │       └── tmp
│   ├── CMakeDirectoryInformation.cmake
│   ├── CMakeOutput.log
│   ├── CMakeTmp
│   ├── Makefile.cmake
│   ├── Makefile2
│   ├── TargetDirectories.txt
│   ├── cmake.check_cache
│   ├── feature_tests.bin
│   ├── feature_tests.c
│   ├── feature_tests.cxx
│   ├── fib.dir
│   │   ├── DependInfo.cmake
│   │   ├── build.make
│   │   ├── cmake_clean.cmake
│   │   ├── depend.make
│   │   ├── flags.make
│   │   ├── link.txt
│   │   └── progress.make
│   └── progress.marks
├── CMakeLists.txt
├── Makefile
├── cmake_install.cmake
└── fib.c
```
