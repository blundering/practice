// 声明包
package main

// 引入包
import (
	"fmt"
	"html/template"
	"net/http"
)

// 处理函数
func httpHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "hello world!")
}

type User struct {
	Name string
	Age  int
}

func templateHandler(w http.ResponseWriter, r *http.Request) { // 处理 URL/template 的请求
	data := struct {
		Title string
		User  User
	}{
		"hello boy",
		User{
			"Rubin",
			18,
		},
	} // 声明一个变量, 将数据携带给模板

	t, _ := template.ParseFiles("template.html") // 解析模板文件(文件相对路径是从 `working directory` 开始解析,如果此处返回 nil 可以检查一下路径)
	t.Execute(w, data) // 解析并使用 response 返回结果.
}

func main() {
	http.HandleFunc("/", httpHandler) // 对应路径,调用对应处理函数
	http.HandleFunc("/template/", templateHandler) // 监听 URL/template 
	http.ListenAndServe("127.0.0.1:9001", nil) // 启动并监听指定端口
}
