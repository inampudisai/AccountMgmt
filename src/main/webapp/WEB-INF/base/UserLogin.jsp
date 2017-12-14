<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="org.apache.commons.lang3.StringEscapeUtils" %>
<%@ taglib prefix="spring1" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setAttribute("context", StringEscapeUtils.escapeHtml4(request.getContextPath()));%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${context}/js/foundation.css" rel="stylesheet" type="text/css" />
    <link href="${context}/js/app.css" rel="stylesheet" type="text/css" />
<title>Login Page</title>
</head>
<body>

<%--    <form method = "post" action="/AccountMgmt/usrMgmt/registrationPage">
        <div class="container2">
            <button type="submit">New Registration</button>
        </div>
    </form>--%>
    <h4 class="sign-in-form">Welcome to SUKUMAR Infra</h4>
    <div class="login-page">
        <div class="form">
            <form class="register-form" method = "post" action="/AccountMgmt/usrMgmt/registrationPage" style="display: block">

                    <input type="text" placeholder="firstname"/>
                    <input type="text" placeholder="Lastname"/>
                    <input type="text" placeholder="email Adsress"/>
                    <input type="password" placeholder="password"/>
                    <input type="text" placeholder="PhoneNo"/>
                    <input type = "submit">Create New user</input>
                    <p class="message">Already registered? <a href="#" onclick="toggle_visibility('login-form')">Sign In</a></p>

            </form>
            <form class="login-form" method = "post" action = "/AccountMgmt/usrMgmt/homePage" style="display: block">

<%--                <c:if test="${not empty errorMessage}">
                    ${errorMessage}
                </c:if>--%>
               <%-- <div class="imgcontainer">
                    <img src="${context}/img_avatar2.png" alt="Avatar" class="avatar">
                </div>--%>
                    <label>Email
                        <input type="text" placeholder="User Name" name ="username" />
                    </label>
                    <label>Password
                        <input type="password" placeholder="Password" name="password" />
                    </label>
                    <input id="show-password" type="checkbox" /><label for="show-password">Show password</label>
                    <p><input type="submit" class="button expanded" value="Log in"></input></p>
                    <p class="text-center"><a href="#">Forgot your password?</a></p>
                <p class="message">Not registered? <a href="#" onclick="toggle_visibility('register-form')">Create an account</a></p>

            </form>
        </div>
    </div>
    <style src="${context}/js/external/jquery/foundation.js"></style>
    <style src="${context}/js/external/jquery/jquery.js"></style>
    <style src="${context}/js/external/jquery/app.js"></style>
</body>
</html>