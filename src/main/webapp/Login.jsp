<%--
  Created by IntelliJ IDEA.
  User: 席洪丽
  Date: 2017/8/9
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><h1>班级人员管理系统</h1></title>
</head>
<body>
<h1 align="center">班级人员管理系统</h1>
<div class="content">
    <form name='f' action='/StudentServlet?action=Login' method='POST' align="center">
        用户名：<input type='text' name='code' value='admin' class="input" />
        <br />
        密码：<input type='password' name='password' value='123456' class="input" />
        <br /><br />
        <input name="submit" type="submit" value="登录" class="login" />
    </form>
</div>
</body>
</html>
