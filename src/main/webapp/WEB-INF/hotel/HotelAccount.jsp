<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/30/2017
  Time: 7:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome to Hotel Account page</title>
    <link href="${context}/js/clsstmt.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<h1>Welcome to Chigurupati's restaurent Account's page</h1>
<div class="container">
<table id = "customers">
    <form method = "post" action = "/AccountMgmt/hotelMgmt/hotelExpenditure.html">
        <tr>
            <td><input type = "submit" name = "expenditure" value = "expenditure"></td>
            <br>
        </tr>
    </form>
    <form method = "post" action = "/AccountMgmt/hotelMgmt/hotelRevenue.html">
        <tr>
            <td><input type = "submit" name = "revenue" value = "revenue"></td>
            <br>
        </tr>
    </form>

</table>
    <div class="container">
</body>
</html>
