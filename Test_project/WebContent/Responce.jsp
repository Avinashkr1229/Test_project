<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	String lang=request.getParameter("sel");
	//create a cookie
	Cookie coo=new Cookie("mycookie",lang);
	
	//set the time limit of the cookie
	coo.setMaxAge(60*60*24*365);
	
	//sent to the browser
	response.addCookie(coo);
%>
<body>
	The User selected ${param.sel} as Primary coding Language<br><br>
	<a href="main.jsp">click Here to dash board</a>
</body>
</html>