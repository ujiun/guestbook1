<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="com.javaex.dao.GuestDao" %>


<%
	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String regDate = request.getParameter("regDate");
	 
	/*
	System.out.println(name);
	System.out.println(password);
	System.out.println(content);
	*/
	 
	//guestVo 객체만들기	
	GuestVo guestVo = new GuestVo(name, password, content);
	//GuestDao 객체만들기
	GuestDao guestDao = new GuestDao();
	
	//GuestDao의 guestInsert()를 이용해서 저장하기
	guestDao.guestInsert(guestVo);
	
	//응답은 리스트로 리다이렉트 시킨다.
	response.sendRedirect("./addList.jsp");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>