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
<form action="${pageContext.request.contextPath}/faqs/faqsinfo" method="post">
    <center>
        <h1>常见问题检索</h1>
        <a href="${pageContext.request.contextPath}/faqs/faqsinfo">发布房源</a>
        <table>
            <tr style="background: deepskyblue"align="center">
                <td>序号</td>
                <td>标题</td>
                <td>分类</td>
                <td>发布时间</td>
            </tr>
            <a href="${pageContext.request.contextPath}/faqs/faqsinfo">返回首页</a>
            <c:forEach var="item" items="${faqsinfolist}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.title}</td>
                   <%-- <td>${item.css.cname}</td>--%>
                    <td><fmt:formatDate value="${item.createdate}" pattern="yyyy-MM-dd"/></td>
                </tr>
            </c:forEach>
        </table>
    </center>
</form>

</body>
</html>
