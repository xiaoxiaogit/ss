<%--
  Created by IntelliJ IDEA.
  User: 刘振宇
  Date: 2017/8/30
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<style type="text/css">
    tr:nth-child(odd){
        background:palegreen;
    }


</style>
<head>
    <title>Title</title>
</head>
<body>

<center>
<form action="${pageContext.request.contextPath}/house/houselist" method="post">
    <input type="text" name="housedesc" value="${housedesc}">
    <input type="submit" value="查询">
</form>
</center>
<form action="${pageContext.request.contextPath}/dolist" method="post">
<center>
    <h1>常见问题检索</h1>
    <a href="${pageContext.request.contextPath}/house/housetype">添加问题常见</a>
    <table>
    <tr style="background: deepskyblue"align="center">
        <td>序号</td>
        <td>标题</td>
        <td>类型</td>
        <td>发布时间</td>
    </tr>
        <a href="${pageContext.request.contextPath}/house/houseinfolist">返回首页</a>
    <c:forEach var="item" items="${houseinfo}">
        <tr>
        <td>${item.houseid}</td>
        <td>${item.housedesc}</td>
            <td><a href="${pageContext.request.contextPath}/house/houselist/${item.typeid}">${item.ht.typename}</a></td>
            <td><fmt:formatDate value="${item.publishdate}" pattern="yyyy-MM-dd"/></td>
        </tr>
    </c:forEach>
    </table>
</center>
</form>

</body>
</html>
