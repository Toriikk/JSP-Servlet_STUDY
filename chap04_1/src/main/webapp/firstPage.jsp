<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");

	System.out.println("firstPage.jsp : ");
	System.out.println("하나의 페이지 속성 : " + pageContext.getAttribute("name"));
	System.out.println("하나의 요청 속성 : " + request.getAttribute("name"));
	System.out.println("하나의 세션 요청 : " + session.getAttribute("name"));
	System.out.println("하나의 어플리케이션 요청 : " +  application.getAttribute("name"));

	request.getRequestDispatcher("secondPage.jsp").forward(request, response); 
%>