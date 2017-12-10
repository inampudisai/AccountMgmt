
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/08/2017
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Users</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body>

<form  method = "post" action = "/AccountMgmt/usrMgmt/addUser">
<div class="container">
    <label><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstName" required>
    <br>
    <label><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastName" required>
    <br>
    <label><b>Email ID</b></label>
    <input type="text" placeholder="Enter email ID" name="emailID" required>
    <br>
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    <br>
    <label><b>Phone No</b></label>
    <input type="text" placeholder="Enter Phone No" name="phoneNo" required>
    <br>
    <button type="submit">Add User</button>

</div>

</form>



</body>
</html>