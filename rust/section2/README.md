```
// 创建
$ cargo new hello_cargo --vcs git

$ cd hello_cargo

// 编译执行
$ cargo build
$ ./target/debug/hello_cargo

// 编译执行
$ cargo run

// 检查代码,不生成可执行文件
$ cargo check

// release 版本
$ cargo build --release
$ ./target/release/hello_cargo

```
**tips** 
1. 检查编译可以使用 `cargo build` 或者 `cargo check`.
2. 一步编译执行可以用 `cargo run`.
3. build 生成的代码会在 target 目录.
4. `cargo build --release` 优化代码编译至 `target/release` 目录,与 `cargo build` 的区别是:更长的编译时间换取更快的执行速度.
5. 一般项目使用
    ```
    $ git clone someurl.com/someproject
    $ cd someproject
    $ cargo build
    ```