package main

import (
	"encoding/json"
	"html/template"
	"io/ioutil"
	"net/http"
)

type Comment struct {
	PostID int `json:"postId"`
	ID int `json:"id"`
	Name string `json:"name"`
	Email string `json:"email"`
	Body string `json:"body"`
} // 解析 json 使用

func main() {
	http.HandleFunc("/", rootHandler) // 定义个路由
	http.ListenAndServe(":9001", nil) // 开启监听服务
}

// 处理 `/` 路由过来的请求
func rootHandler(w http.ResponseWriter, r *http.Request) {
	url := "https://jsonplaceholder.typicode.com/comments"
	res, _ := http.Get(url) // 请求远程数据
	resBytes, _ := ioutil.ReadAll(res.Body)
	comments := []Comment{}
	json.Unmarshal(resBytes, &comments) // 解析返回的 json
	data := struct {
		Title    string
		Comments []Comment
	}{
		"评论列表",
		comments,
	} // 建造带入模板的数据.

	t, _ := template.ParseFiles("comments.html") // 解析模板文件.
	t.Execute(w, data) // 将数据带入模板,并返回 response
}
