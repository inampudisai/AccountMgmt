<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/30/2017
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hotel Expenditure</title>
    <link href="${context}/js/clsstmt.css" rel="stylesheet" type="text/css" media="screen" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } );
    </script>
</head>
<body>
<h1>
    Enter all the bills related to expenditure

</h1>


<form method = "post" action = "/AccountMgmt/hotelMgmt/AddExpenditure.html">
    <table id = "customers">
        <tr>
            <td>Bill No:</td><td><input type = "text" name ="billNo"></td>
        </tr>
        <br>
        <tr>
            <td>Bill type:</td>
            <td>
            <select name="select" id="selectType">
                <option value="select" selected>Select a Type</option>
                <option value="Salary">Salary</option>
                <option value="Vegitables">Vegitables</option>
                <option value="grosseries">Grosseries</option>
                <option value="advancesalary">AdvanceSalary</option>
                <option value="giveaway">FreeItems</option>
            </select></td>
        </tr>
        <br>
        <tr>
            <td>Date :</td>
            <td><input type="text" id="datepicker" name="selectDate"></td>
        <tr>
            <td>Amount Paid:</td><td><input type = "text" name ="totalAmount"></td>
        </tr>
            <td><input type = "submit" value = "Enter Expenditure Bill"></td>
        </tr>
    </table>

</form>

</body>
</html>
