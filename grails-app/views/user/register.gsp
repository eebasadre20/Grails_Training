<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 4/23/14
  Time: 5:49 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Register</title>
</head>

<body id="body">
<h1>Registration</h1>
<p>Complete the form below to create an account!</p>
<g:hasErrors bean="${user}">
    <div class="errors">
        <g:renderErrors bean="${user}"></g:renderErrors>
    </div>
</g:hasErrors>
<g:form action="register" name="registerForm">
    <div class="formField">
        <label for="login">Login:</label>
        <g:textField name="login" value="${user?.login}"></g:textField>
    </div>
    <div class="formField">
        <label for="password">Password:</label>
        <g:passwordField name="password" value="${user?.password}"></g:passwordField>
    </div>
    <div class="formField">
        <label for="confirm">Confirm Password:</label>
        <g:passwordField name="confirm" value="${params?.confirm}"></g:passwordField>
    </div>
    <div class="formField">
        <label for="firstName">First Name:</label>
        <g:textField name="firstName" value="${user?.firstName}"></g:textField>
    </div>
    <div class="formField">
        <label for="lastName">Last Name:</label>
        <g:textField name="lastName" value="${user?.lastName}"></g:textField>
    </div>
    <g:submitButton class="formButton" name="register" value="Register"></g:submitButton>
</g:form>
</body>
</html>