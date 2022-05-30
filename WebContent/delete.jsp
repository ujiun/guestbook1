<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	//파라미터에서 값 꺼내오기
	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));
	System.out.println(password);
	System.out.println(no);
	
	
	GuestDao guestDao = new GuestDao();
	String guestPw = guestDao.getPassword(no);
	
	//패스워드 비교
	if(guestPw.equals(password)) {
		guestDao.guestDelete(no);
	}
	
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