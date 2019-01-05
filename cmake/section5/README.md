本次 使用配置中变量和.h.in文件配合生成 .h 头文件

* `cMakeLists.txt`中新增
    ```
    # 设置变量值 在.h.in中通过@变量名@引用 生成.h文件用.
    set(VERSION_MAJOR 1)
    set(VERSION_MINOR 0)

    # ${PROJECT_SOURCE_DIR} 源文件根目录
    # ${PROJECT_BINARY_DIR} make 生成可执行文件的目录?
    configure_file(
        "${PROJECT_SOURCE_DIR}/main.h.in"
        "${PROJECT_SOURCE_DIR}/main.h"
    )
    ```
* 创建.h.in文件
    ```
    #define VERSION_MAJOR @VERSION_MAJOR@
    #define VERSION_MINOR @VERSION_MINOR@
    ```

执行`cmake`时 会根据配置文件替换.h.in中的变量 生成.h头文件