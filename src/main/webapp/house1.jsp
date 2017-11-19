<%--
  Created by IntelliJ IDEA.
  User: 刘振宇
  Date: 2017/8/30
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/house/houseinsert" method="post">
<center>

    <a href="${pageContext.request.contextPath}/house/houseinfolist">返回首页</a>
<br/>
    <br/>

    分类：
    <select name="typeid">
        <c:forEach items="${houseType}" var="item">
            <option value="${item.typeid}">${item.typename}</option>
        </c:forEach>
    </select>
    <br/>
    标题：<input name="housedesc" required/>

    日期：<input name="createdate" required/>
    <br/> <br/>
     </input>
    <input type="submit" required/>
    <button type="reset">重置</button>
</center>
</form>
</body>
</html>
