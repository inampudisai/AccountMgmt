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
    <style src="${context}/js/external/jquery/foundation.js"></style>
    <style src="${context}/js/external/jquery/jquery.js"></style>
    <%--<style src="${context}/js/external/jquery/app.js"></style>--%>
    <style src="${context}/js/external/jquery/jquery-1.11.0.min.js"></style>

<title>SUKUMAR infra login Page</title>
</head>
<body>

<header>
    <div >
        <div class="navigateTop">
            <ul class="navigate">

                <li id="menuLogin">Login Page</li>
                <li id="menuRegistration">New Registration Page</li>
                <li id="menuContact">Contact Details</li>
            </ul>
        </div>

    </div>
    <!-- Clear any floats before the body is drawn -->
    <div class="clear"></div>
</header>

<div class="col1left col1right contentPage">

    <div id ="pageLogin">
        <div class="login-page form">
            <form class="login-form" method = "post" action = "/AccountMgmt/usrMgmt/homePage">

                <label>Email
                    <input type="text" placeholder="User Name" name ="username" />
                </label>
                <label>Password
                    <input type="password" placeholder="Password" name="password" />
                </label>
                <input id="show-password" type="checkbox" /><label for="show-password">Show password</label>
                <p><input type="submit" class="button expanded" value="Log in"></input></p>
                <p class="text-center"><a href="#">Forgot your password?</a></p>
                <%--<p class="message">Not registered? <a href="#" onclick="toggle_visibility('register-form')">Create an account</a></p>--%>

            </form>

        </div>
    </div>

    <div id ="pageRegister">
    <div class="login-page form">
            <form class="register-form" method = "post" action="/AccountMgmt/usrMgmt/registrationPage">
                    <input type="text" placeholder="firstname"/>
                    <input type="text" placeholder="Lastname"/>
                    <input type="text" placeholder="email Adsress"/>
                    <input type="password" placeholder="password"/>
                    <input type="text" placeholder="PhoneNo"/>
                    <input type = "submit">Create New user</input>
                    <%--<p class="message">Already registered? <a href="#" onclick="toggle_visibility('login-form')">Sign In</a></p>--%>
            </form>
    </div>
    </div>

    <!-- Clear any floats before the footer is drawn -->
    <div class="clear"></div>
</div>
</div>
<footer class="col1left">
    <!-- Clear any floats before the footer is drawn -->
    <div class="clear"></div>
    <div class="footer">SUKUMAR Company, Inc.</div>
    <!-- footer goes here -->
</footer>
<script>
var showPage = function(nPage) {
// Hide all the pages
$("#pageLogin").hide();
$("#pageRegister").hide();
//$("#pageSummary").hide();
// Show the desired page
switch(nPage) {
case 1:
$("#pageLogin").show();
break;
case 2:
$("#pageRegister").show();
break;
case 3:
alert("showPage called with outofbounds value for npage");
break;
}
}

// Document ready handler
$(document).ready(function(){
//Logic called when the HTML has been loaded and is ready for work
$("#menuLogin").click(function(){
// Code run when there is a click event on #menuSummary
showPage(1);
});

$("#menuRegistration").click(function(){
// Code run when there is a click event on #menuRelationship
showPage(2);
});
$("#menuContact").click(function(){
// Code run when there is a click event on #menuChat
alert("Need to implement Contact Details!")
});
});
</script>
<style src="${context}/js/external/jquery/app.js"></style>
<style src="${context}/js/external/jquery/jquery-1.11.0.min.js"></style>
</body>
</html>