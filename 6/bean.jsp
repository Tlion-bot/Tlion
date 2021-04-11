<%--
  Created by IntelliJ IDEA.
  User: 19825
  Date: 11/4/2021
  Time: 下午2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="a" class="Mybean.user" scope="page"></jsp:useBean>
<html>
<head>
    <title>税收计算</title>
</head>
<body>
<h1>税收计算</h1>
<form  method="post" >
    <p></p>收入: <input type="text" name="incom" oninput = "value=value.replace(/[^\d]/g,'')">
    <input type="submit" value="提交">
</form>

<jsp:setProperty property="*" name="a"/>

应缴纳税收为：<jsp:getProperty name="a" property="tax"/>

</body>

</html>
