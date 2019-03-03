
## sdk 开发步骤
1. 使用  [foundation-sdk](https://github.com/Hanson/foundation-sdk)
2. 创建一个用于获取 token 的类
3. 基于 AbstractApi 实现一个 Api 完成请求时候自动补全 token/sign 的基类.
4. 继承3实现的 Api 基类, 实现对应接口模块. eg:会员模块 `Member::class`
5. 利用 `Pimple\Container;` `Pimple\ServiceProviderInterface;` 实现 `Member` 类的服务提供类 `Member\ServiceProvider`;
6. 主文件继承 Foundation 注册 Member\ServiceProvider;
7. 使用 `$uhy = new Uhy($config); $uhy->member->API接口方法`; 

## 完成demo
[uhy-sdk](https://github.com/blundering/uhy-sdk)