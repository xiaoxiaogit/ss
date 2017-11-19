<%@ page language="java" import="java.util.*,cn.entity.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<u>
    <title>Title</title>
</u>
<body>
<h1>数据校验</h1>
<h1>文件上传</h1>
<form action="/first" method="post" enctype="multipart/form-data">
    文件<input type="file" name="upload"/>
        <input type="file" name="upload"/>
        <input type="file" name="upload"/>
        <input type="submit"/>
</form>
</body>
</html>
