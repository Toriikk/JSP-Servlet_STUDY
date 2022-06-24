<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id="pinksung";
String pwd="1234";
String name="김재희";

if(id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd"))	) {
	session.setAttribute("loginUser", name); // 로그인할 때는 반드시 set session이 있어야 함!
	response.sendRedirect("main.jsp");
}
else {
	response.sendRedirect("loginForm.jsp");
}
%>
</body>
</html>