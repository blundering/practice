// 声明包
package main

// 引入包
import (
	"fmt"
	"net/http"
)

// 处理函数
func httpHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "hello world!")
}

func main() {
	http.HandleFunc("/", httpHandler) // 对应路径,调用对应处理函数
	http.ListenAndServe("127.0.0.1:9001", nil) // 启动并监听指定端口
}