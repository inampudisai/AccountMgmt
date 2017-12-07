<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/30/2017
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel Revenue page</title>
    <link href="${context}/js/clsstmt.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>

<h1>
    Enter all the bills related to sales

</h1>

<form method = "post" action = "/AccountMgmt/hotelMgmt/AddRevenue.html">
    <table id = "customers">
        <tr>
            <td>Bill type:</td>
            <td><select name="select" id="selecttype">
                <option value="Salary">Salary</option>
                <option value="Vegitables">Vegitables</option>
                <option value="grosseries">Grosseries</option>
                <option value="advancesalary">AdvanceSalary</option>
                <option value="giveaway">FreeItems</option>
            </select></td>
        </tr>
        <br>
        <tr>
            <td>Amount Paid:</td><td><input type = "text" name ="totalamountpaid"></td>
        </tr>
        <td><input type = "button" value = "Enter Revenue Bill"></td>
        </tr>
    </table>

</form>
</body>
</html>
