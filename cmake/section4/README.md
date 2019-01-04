那我们来看看cMakeLists.txt跟上一节有什么区别?

```
# 声明cmake最低版本要求
cmake_minimum_required(VERSION 2.6)

# 定义项目名称
project(multiDirDemo)

# 添加子目录
# 并将名称保存到 SOURCE_DIR 变量
aux_source_directory(. SOURCE_DIR)

# 生成可执行文件
add_executable(add ${SOURCE_DIR})

# 添加math子目录 生成过程会去子目录根据子目录的cMakeLists.txt进行相应操作
add_subdirectory(math)

# 添加链接库
target_link_libraries(add Math)
```
根目录下的`cMakeLists.txt`新增了条命令.
    
1. `add_subdirectory(math)` 这条命令会在执行`cmake ..`命令的时候去子目录`math`执行子目录对应的`cMakeLists.txt`
    
    ```
    ## 子目录下的`cMakeLists.txt` 文件内容如下
    # 将当前目录下所有源文件名保存到变量 MATH_SOURCE
    aux_source_directory(. MATH_SOURCE)

    # 生成链接库 (会在cmake 命令执行的时候 创建对应的连接库文件libMath.a)
    add_library(Math ${MATH_SOURCE})
    ```
2. `target_link_libraries(add Math)` 生成可执行文件add的时候会去加上链接库libMath.a