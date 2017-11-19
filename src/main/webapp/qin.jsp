<%@ page language="java" import="java.util.*,cn.entity.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" align="center" >
<c:forEach items="${List}" var="e">
    <tr>
        <td>学生编号</td>
        <td>学生姓名</td>
    </tr>
        <td>${e.classesid}</td>
        <td>${e.studentname}</td>
</c:forEach>
</table>
</body>
</html>
