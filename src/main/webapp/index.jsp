<%@ page language="java" import="java.util.*,cn.entity.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<body>
<h2>Hello World!</h2>
<%--<h1>数据校验</h1>--%>
<form action="/first" method="post">
   <%-- 成绩:<input name="score" /> <span>${scoremsg }</span><br/><br/>
    姓名:<input name="name"/><span>${namemsg }</span><br/><br/>
    电话:<input name="phone"/><span>${phonemsg }</span><br/><br/>
    <input type="submit" value="注册"/>--%>
</form>

</body>
</html>
