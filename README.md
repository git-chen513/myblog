# 个人博客项目

> **作者：陈灿杰/baker**
>
> **qq：2416871211**
>
> **邮箱：2416871211@qq.com**
>
> **个人CSDN：https://blog.csdn.net/can_chen**
>
> **github：https://github.com/git-chen513**




目录中有myblog.sql文件，可以直接执行生成对应的数据库和表 

本地启动项目之后，键入"localhost:8099"即可跳转到博客的首页

要进入管理员界面，需要键入"localhost:8099/admin"即可跳转到管理员登录界面
 (登录的用户名：陈灿杰 密码：123456)

博客后台管理等操作都必须先登录之后才有权限，因此添加了登录拦截器，对于博客后台管理相关的请求直接通过浏览器地址键入都会被拦截（除了"localhost:8099/admin"）

**个人博客管理系统已经部署上线，可以通过：http://116.62.105.198:8099/ 直接访问首页，通过：http://116.62.105.198:8099/admin 登录后台管理系统 **

**技术组合：**

*  SpringBoot + mybatis + thymeleaf + mysql + Semantic UI框架  +maven

**工具与环境：**

*  IDEA
*  Maven 3.6.2
*  JDK 8以上
*  springboot 2.2.5









