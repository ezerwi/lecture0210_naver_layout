<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String news = request.getParameter("news");
	String news_null = "뉴스를 선택하세요";
	if (news == null) {
		news = news_null;
	}
%>

<div align="center">

	<%
		if (news.equals(news_null)) {
			out.print(news_null);
		} else {
			out.print(news + "를 선택하셨습니다.");
		}
	%>


</div>