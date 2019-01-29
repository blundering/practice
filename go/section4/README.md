这一章 基本没有新增什么,只是完成了:
 * 获取接口 json 数据, 并将数据带入模板
 * 模板引入 js/css 等组件美化界面.
 * 将带入模板的数据,循环渲染成一个 table 数据.
 
重复练习并了解一下流程.
1. 获取远程接口数据简单流程
    * http 获取一个 response. (eg:http.Get(url)) 
    * 将 response.Body 读取成需要的 bytes 类型. (eg: bytes, err := ioutil.ReadAll(response.Body))
    * 使用结果. (eg:fmt.Fprintln(w, string(bytes)) 或者 json_unmarshal(bytes, &声明的stuct类型的变量))
2. 模板美化
    * 简单暴力,直接在 .html 文件里 xxx.
3. 使用模板, 和变量
    * 解析 .html 文件. (eg: t, err := template.ParseFiles("filename.ext"))
    * 渲染数据. (eg: t.Execute(w, data))