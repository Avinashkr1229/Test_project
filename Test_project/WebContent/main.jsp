<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	//to accept the multiple cookies from the browser
	String lang="java";
	//get the coockies
	Cookie[] cook=request.getCookies();
	if(cook!=null){
		for(Cookie c:cook){
			if("mycookie".equals(c.getName())){
				lang=c.getValue();
				break;
			}
		}
	}
%>
<body>
	<h3>The Latest Books of <%=lang%></h3>
	<ul>
		<li><%=lang%> is strong coding language</li>
		<li><%=lang %> used by more than 50% of IT company</li>
	</ul>
	
	<h3>The New Jobs on <%=lang %></h3>
	<ul>
		<li><%=lang %> front-end developer</li>
		<li><%=lang %> back-end developer</li>
		<li><%=lang %> senior developer</li>
	</ul>
	
	<h3>The Top company uses <%=lang %></h3>
	<ul>
		<li>Google</li>
		<li>Amazon</li>
		<li>Flipkart</li>
	</ul><br><br>
	<a href="Input.html">click here modify your primary coding Langauge</a>
</body>
</html>