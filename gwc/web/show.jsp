<%--
  Created by IntelliJ IDEA.
  User: 19825
  Date: 18/4/2021
  Time: 下午5:41
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@page import="a.produce" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession b=request.getSession();
    produce[] produces = (produce[]) b.getAttribute("produce");
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
<!-- Table goes in the document BODY -->
<table class="gridtable">
    <tr>
        <th>商品</th><th>价格</th><th>已购数</th><th>操作</th>
    </tr>
    <tr>
        <td>计算机组成原理</td><td>9</td><td><%=produces[0].getNum()%> </td><td> <a href='<%=request.getContextPath()%>/deleteServlet?id=1'>减1本</a></td>
    </tr>
    <tr>
        <td>操作系统</td><td>10</td><td><%=produces[1].getNum()%> </td><td> <a href='<%=request.getContextPath()%>/deleteServlet?id=2'>减1本</a></td>
    </tr>
    <tr>
        <td>计算机网络</td><td>15</td><td><%=produces[2].getNum()%> </td><td> <a href='<%=request.getContextPath()%>/deleteServlet?id=3'>减1本</a></td>
    </tr>
    <tr>
        <td>数据结构与算法</td><td>18</td><td><%=produces[3].getNum()%> </td><td> <a href='<%=request.getContextPath()%>/deleteServlet?id=4'>减1本</a></td>
    </tr>
</table>
<%
    int sum=0;
    for(int i=0;i<4;i++){
        sum=produces[i].getNum()*produces[i].getPrice()+sum;
    }
%>
<hr/>
<h1>你的物品总价：<%=sum%><br/>
<a href='<%=request.getContextPath()%>/shopping.jsp'>继续购物</a><br/>
<a href='<%=request.getContextPath()%>/show/account'>去结算</a><br/></h1>
</body>
</html>