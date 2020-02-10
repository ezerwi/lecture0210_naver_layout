<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
			String log = (String) request.getParameter("log");
			if(request.getParameter("log")==null){
				log = "logout.jsp";
			}
			
			String today_content = (String) request.getParameter("today_content");
			if (today_content == null) {
				today_content = "enter.jsp";
			}
			
			String shops = (String) request.getParameter("shops");
			if(shops == null) shops = "goods.jsp";
		%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	.search {
		HEIGHT: 600 px;
	}
	#search_button {
		width : 75px;
		background-color: #2E8B57;
		border-radius: 10px;
		color : white;
	}
	
</style>
<title>LAYOUT</title>
</head>
<body>

	<H1>NAVER_LAYOUT_TEST</H1>

	<TABLE BORDER="1" CELLPADDING="1" CELLSPACING="0">
		<TR>
			<TD COLSPAN="1"><A HREF="main.jsp"><IMG	SRC="./img/naver_logo.png" /></A></TD>
			<TD COLSPAN="3"><input class = "search" TYPE="SEARCH"  /><INPUT TYPE="BUTTON"	VALUE="검색" class = "search" id="search_button" /></TD>
		</TR>
		
		<TR>
			<TD COLSPAN = "3"><jsp:include page = "menubar.jsp" flush = "false" /></TD>
			<TD COLSPAN = "1"> SEARCH LIST </TD>
		</TR>
		
		<TR>
			<TD COLSPAN = "2" width = "500px"  HEIGHT = "100px" align = "center" ><jsp:include page = "mainad.jsp" flush = "false" /></TD>
			<TD COLSPAN = "2">LOGIN MENU<br><jsp:include page = "<%=log %>" flush = "false" /></TD>
		</TR>
		
		<TR>
			<TD COLSPAN = "1" ROWSPAN = "2"  WIDTH = "100PX"><jsp:include page = "news_select.jsp" flush = "false" /></TD>
			<TD COLSPAN = "1" ROWSPAN = "2">NEWS STAND<jsp:include page = "news_stand.jsp" flush = "false" /> </TD>
			<TD COLSPAN = "2"> RIGHT AD<br><jsp:include page = "right_ad.jsp" flush = "false" /></TD>
		</TR>
		
		<TR>
			<TD COLSPAN = "2" align = "center">SHOPPING SELECT<br /><jsp:include page = "shop_select.jsp" flush = "false" /></TD>
		</TR>
		
		<TR>
			<TD COLSPAN = "2"><jsp:include page = "today_list.jsp" flush = "false" /></TD>
			<TD COLSPAN = "2" ROWSPAN = "2">SHOPPING<jsp:include page = "<%=shops %>" flush = "false" /></TD>
		</TR>
		
		<TR>
			<TD COLSPAN = "2" align = "center" >TODAY ARTICLES<jsp:include page = "<%=today_content %>" flush = "false" /></TD>
		</TR>


	</TABLE>



</body>
</html>