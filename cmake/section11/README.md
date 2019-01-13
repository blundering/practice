这一章 我也是懵逼的...

根据官方文档的操作我在根目录的 `cMakeLists.txt` 增加了下面 cPack 相关的配置
```
# 生成 cPack 安装包 配置文件
include (InstallRequiredSystemLibraries)
set (CPACK_RESOURCE_FILE_LICENSE  
     "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
set (CPACK_PACKAGE_VERSION_MAJOR "${VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${VERSION_MINOR}")
include (CPack)
```
并且在根目录下增加了 `License.txt` 说明.

这时我们进入 `build` 目录执行 `$ cmake ..`

生成文件和之前的有什么区别呢?
比较明显的是 多了两个文件 `CPackConfig.cmake` 和 `CPackSourceConfig.cmake`

* 接着我们试试生成二进制可执行文件的命令 `cpack --config CPackConfig.cmake`

          看到目录多出了两个文件 `multiDirDemo-1.0.1-Darwin.sh` 和 `multiDirDemo-1.0.1-Darwin.tar.gz` multiDirDemo 对应我们设置的项目名称

          我们来执行 `$ ./multiDirDemo-1.0.1-Darwin.sh` 或者直接解压 `$ tar -xf multiDirDemo-1.0.1-Darwin.tar.gz`

          会生成一个 `multiDirDemo-1.0.1-Darwin` 目录 我们来看看里面有什么
          ```
          ➜  build git:(master) ✗ tree multiDirDemo-1.0.1-Darwin 
          multiDirDemo-1.0.1-Darwin
          ├── bin
          │   ├── add
          │   └── libMath.a
          └── include
               ├── main.h
               └── math.h
          ```
          aha~ 可直接运行的二进制 文件.

* 接下来我们再试一下生成源码包的命令 `cpack --config CPackSourceConfig.cmake`

          多了4个压缩文件 
          ├── multiDirDemo-1.0.1-Source.tar.Z
          ├── multiDirDemo-1.0.1-Source.tar.bz2
          ├── multiDirDemo-1.0.1-Source.tar.gz
          └── multiDirDemo-1.0.1-Source.tar.xz
          我们打开一个
          tar -xf multiDirDemo-1.0.1-Source.tar.gz
          
          看看压缩包里内容
          ➜  build git:(master) ✗ tree multiDirDemo-1.0.1-Source -L 2
          multiDirDemo-1.0.1-Source
          ├── License.txt
          ├── README.md
          ├── build
          │   ├── CMakeCache.txt
          │   ├── CMakeFiles
          │   ├── CPackConfig.cmake
          │   ├── CPackSourceConfig.cmake
          │   ├── CTestTestfile.cmake
          │   ├── DartConfiguration.tcl
          │   ├── Makefile
          │   ├── Testing
          │   ├── _CPack_Packages
          │   ├── cmake_install.cmake
          │   ├── main.h
          │   ├── math
          │   └── multiDirDemo-1.0.1-Source.tar.bz2
          ├── cMakeLists.txt
          ├── main.c
          ├── main.h.in
          └── math
               ├── cMakeLists.txt
               ├── math.c
               └── math.h