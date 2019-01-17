// 声明包
package main

// 引入包
import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
)

// 定义 struct 用于 json.Unmarshal 解析
type User struct {
	ID      int     `json:"id"`  // `json:"id"` 对应的json字符串属性 eg:{"id":1, "balabala":"bulubulu"}
 	Name    string  `json:"name"` // Name 第一个字母大写? 小写无效么?
	Email   string  `json:"email""`
	Address Address `json:"Address"`
	Phone   string  `json:"phone"`
	Website string  `json:"website"`
	Company company `json:"company"`
}

type Address struct { // struct 貌似大小写都可以哈?
	Street  string  // 没写 `json:"street"` 貌似也可以工作, 莫非属性名相同就可以省略?
	Suite   string
	City    string
	Zipcode string
	Geo     geo
}

type geo struct { // struct 貌似大小写都可以哈?
	Lat string
	Lng string
}

type company struct {
	Name        string `json:"name"`
	CatchPhrase string `json:"catchPhrase"`
	Bs          string `json:bs`
}

func main() {
	response, _ := http.Get("https://jsonplaceholder.typicode.com/users") // 获取 url 的内容
	bytes, _ := ioutil.ReadAll(response.Body) // 将 url body 体 转为[]byte
	fmt.Println(string(bytes)) // 打印获取到的 url 内容
	users := []User{} // 定义变量 将 json 解析为对象存入变量
	json.Unmarshal(bytes, &users) // 解析 json
	for _, user := range users { // 循环输出
		fmt.Println("----------------------------------------------------------------")
		fmt.Println("ID:", user.ID) // 可以用 变量.属性名 访问
		fmt.Println("username:", user.Name)
		fmt.Println("Address:", user.Address)
		fmt.Println("city:", user.Address.City) // 多级同样可以访问
		fmt.Println("geo's lat", user.Address.Geo.Lat)
		fmt.Println("geo's lng", user.Address.Geo.Lng)
	}
	fmt.Println("----------------------------------------------------------------")
}
