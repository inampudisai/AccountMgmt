<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/30/2017
  Time: 7:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="org.apache.commons.lang3.StringEscapeUtils" %>
<%@ taglib prefix="spring1" uri="http://www.springframework.org/tags"%>
<% request.setAttribute("context", StringEscapeUtils.escapeHtml4(request.getContextPath()));%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="${context}/js/clsstmt.css" rel="stylesheet" type="text/css" media="screen" />
    <title>Login Page</title>
</head>
<body>

<h1>Account Home Page</h1>
<table id = "customers">
    <form method = "post" action = "/AccountMgmt/usrMgmt/hotelAccount">
        <tr>
            <td><input type = "submit" name = "hotel" value = "hotelAccount"></td>
            <br>
        </tr>
    </form>
    <form method = "post" action = "/AccountMgmt/usrMgmt/sandAccount">
        <tr>
            <td><input type = "submit" name = "sand" value = "sandAccount"></td>
            <br>
        </tr>
    </form>
    <form method = "post" action = "/AccountMgmt/usrMgmt/earthMoverAccount">
        <tr>
            <td><input type = "submit" name = "earth" value = "earthMoverAccount"></td>

        </tr>
    </form>
</table>

</body>
</html>
