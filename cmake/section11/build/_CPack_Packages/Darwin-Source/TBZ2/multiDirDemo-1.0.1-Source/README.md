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

接着我们继续执行 `cpack --config CPackConfig.cmake`

看到目录多出了两个文件 `multiDirDemo-1.0.1-Darwin.sh` 和 `multiDirDemo-1.0.1-Darwin.tar.gz` multiDirDemo 对应我们设置的项目名称

我们来执行 `$ ./multiDirDemo-1.0.1-Darwin.sh` 或者直接解压 `$ tar -tf multiDirDemo-1.0.1-Darwin.tar.gz`