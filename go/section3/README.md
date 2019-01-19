
`IDE` 运行的注意: 设置的 `working directory` 

`template.ParseFiles("filename.ext")` 中的 `filename.ext` 相对路径的话是从 `working directory` 开始解析.

如果找不到文件则访问时会产生错误
`2019/01/19 10:17:24 http: panic serving 127.0.0.1:50246: runtime error: invalid memory address or nil pointer dereference
`