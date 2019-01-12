这一章我们用 `check_function_exists` 命令检测某个函数系统是否提供,并且配合变量/宏 做一些事情.

根配置 `cMakeLists.txt` 中 我们在第五章定义的 **`configure_file` 之前**加入 

**注意位置是 `configure_file` 之前**
```
# 检测系统函数是否存在
include (CheckFunctionExists)

# 如果系统提供power函数 则定义 HAVE_POW
check_function_exists(pow HAVE_POW)
```

然后在 `main.h.in` 中添加 `#cmakedefine HAVE_POW` 

这两条操作会在编译的时候检测系统是否提供 `pow`, 如果提供则在生成的 `main.h` 中生成 `#define HAVE_POW`供程序使用.

接着我们改造一下程序 `main.c`

这里我们简单打印一下说明.

```
  #if defined (HAVE_POW) 
      printf("系统提供函数pow() \n");
  #endif
```

现在让我们进入 `build` 目录, 依次执行
```
$ cmake ..
$ make
$ ./add 1 2
```
看一下输出 系统是否支持 pow 呢. ^^

```
➜  build git:(master) ✗ ./add 1 2
系统提供函数pow()
1 and 2 is 3
```