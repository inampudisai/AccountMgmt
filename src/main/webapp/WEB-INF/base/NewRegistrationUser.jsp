
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

<form:form action="/AccountMgmt/usrMgmt/addUser" modelAttribute="registerUser" method="post">
<div class="container">
    <table>
        <tr>
            <td>First Name:</td>
            <td><form:input path="firstName" />
            </td>
            <td style="color: red; font-style: italic;"><form:errors
                    path="firstName" />
            </td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><form:input path="lastName" />
            </td>
            <td style="color: red; font-style: italic;"><form:errors
                    path="lastName" />
            </td>
        </tr>
        <tr>
            <td>Email ID:</td>
            <td><form:input path="emailID" />
            </td>
            <td style="color: red; font-style: italic;"><form:errors
                    path="emailID" />
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><form:password path="password" />
            </td>
            <td style="color: red; font-style: italic;"><form:errors
                    path="password" />
            </td>
        </tr>
        <tr>
            <td>Mobile No:</td>
            <td><form:input path="phoneNo" />
            </td>
            <td style="color: red; font-style: italic;"><form:errors
                    path="phoneNo" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Register" />
            </td>
        </tr>
    </table>



</div>

</form:form>



</body>
</html>