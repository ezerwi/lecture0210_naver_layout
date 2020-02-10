<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import = "java.util.Random"%>

<%
	
	Random rd = new Random();
	
	String[] todays = {"enter.jsp", "sports.jsp", "life.jsp", "know.jsp", "fun.jsp"};
	String[] shops = {"goods.jsp", "malls.jsp", "mens.jsp"};
	
%>

<jsp:forward page="layout.jsp">

	<jsp:param value = "logout.jsp" name="log"  />
	<jsp:param value = "<%=todays[rd.nextInt(todays.length)] %>" name = "today_content" />
	<jsp:param value = "<%=shops[rd.nextInt(shops.length)] %>" name = "shops" />

</jsp:forward>