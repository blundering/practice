```
composer install;  #安装包,根据composer.json
composer update;   #更新包,升级composer.json的所有代码库(如果能升级的话)
composer search 关键字; #搜索包,搜索composer可用的包
composer require 包名称; #引入包,会在composer.json新增一条包配置,并下载该代码包 
composer remove 包名称; #删除包
composer dump-autoload; #生成当前命名空间与类库文件路径的一个映射，运行时加载会直接读取这个映射，加快文件的加载速度。
```