<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session"/>
<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="com.Language"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="Locale.jsp?theLocale=en_US">English(US)</a>
	|
	<a href="Locale.jsp?theLocale=es_ES">Spanish(ES)</a>
	|
	<a href="Locale.jsp?theLocale=de_De">German(DE)</a>
	<hr/>
	<fmt:message key="label.greeting"/><br><br>
	<fmt:message key="label.firstname"/> Avinash<br>
	<fmt:message key="label.lastname"/> Kr<br><br>
	<fmt:message key="label.welcome"/>
</body>
</html>