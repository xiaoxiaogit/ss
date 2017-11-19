<%@ page language="java" import="java.util.*,cn.entity.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="js/jQuery1.11.1.js">
</script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(
        function() {
            $("#myform").submit(function(){
                var username=$("#count").val();
                var age=$("#name").val();

                var address=/*$("#add option[selected]").val();*/
                    $("#add").attr("SELECTED","SELECTED").val();


                if(address==0){
                    alert("出库商品必选")
                    $("#add").focus();
                    return false;
                }
                if(username=="")
                {
                    alert("出库数量必填！");
                    $("#count").focus();
                    return false;
                }
                if(age=="")
                {
                    alert("经手人必填");
                    $("#name").focus();
                    return false;
                }
                alert('提交成功！');
            });
        });
</script>
<body>
<form action="${pageContext.request.contextPath}/product/productinfo" method="post">
        <select name="css">
        考勤人员查询: <option value="0">出库商品</option>
        <c:forEach var="iditem" items="${info}">
        <option value="${iditem.id}">${iditem.productname}</option>
        </c:forEach>
        </select>
        <br>
        数量：<input  id="count" name="quantity"/>
        经手人：<input id="name" name="handler"/>
        </br>
        <input type="submit" value="提交">
        <input type="button" value="重置">
</form>
</body>
</html>
