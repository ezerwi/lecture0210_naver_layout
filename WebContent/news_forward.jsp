<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    	request.setCharacterEncoding("UTF-8");
    	String news = request.getParameter("news");
    %>
    
    <jsp:forward page="layout.jsp" >
    	<jsp:param value="<%=news %>" name="news"/>
    </jsp:forward>