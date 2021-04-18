<%--
  Created by IntelliJ IDEA.
  User: 19825
  Date: 4/4/2021
  Time: 下午8:27
  To change this template use File | Settings | File Templates.
--%>




<!DOCTYPE html>
<%@page import="a.produce" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    HttpSession b =request.getSession();
    if(b.getAttribute("produce")==null){
        produce[] produces=new produce[4];
        produces[0]=new produce("a",0,9);
        produces[1]=new produce("b",0,10);
        produces[2]=new produce("c",0,15);
        produces[3]=new produce("d",0,18);
        b.setAttribute("produce",produces);
    }


%>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>编程狮(w3cschool.cn)</title>
<head>
    <style type="text/css">
        table.gridtable {
            font-family: verdana,arial,sans-serif;
            font-size:20px;
            color:#333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }
        table.gridtable th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #dedede;
        }
        table.gridtable td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #ffffff;
        }
        a{text-decoration: none;color: #333333}
        a:hover{color: aqua}

    </style>
</head>

<body>
<table class="gridtable">
    <tr>
        <th>商品</th><th>价格</th><th>操作</th>
    </tr>
    <tr>
        <td>计算机组成原理</td><td>9</td><td> <a href='<%=request.getContextPath()%>/addCartTip?id=1'>加1本</a></td>
    </tr>
    <tr>
        <td>操作系统</td><td>10</td><td>    <a href='<%=request.getContextPath()%>/addCartTip?id=2' >加1本</a></td>
    </tr>
    <tr>
        <td>计算机网络</td><td>15</td><td>  <a href='<%=request.getContextPath()%>/addCartTip?id=3'>加1本</a></td>
    </tr>
    <tr>
        <td>数据结构与算法</td><td>18</td><td> <a href='<%=request.getContextPath()%>/addCartTip?id=4'>加1本</a></td>
    </tr>
</table>
<hr/>
<a href='<%=request.getContextPath()%>/show.jsp'>查看购物车</a><br/>
</body>
</html>
