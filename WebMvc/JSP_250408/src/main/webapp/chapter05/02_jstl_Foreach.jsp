<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL_FOREACH</title>
</head>
<body bgcolor = "aliceblue">
<h3>&lt;c:foreach&gt;</h3>

<c:forEach var ="i" items = "${members }" begin = "0" end = "4" varStatus = "status">
	index: ${status.index } <br />
	count: ${status.count } <br />
	name: ${i.name } <br>
	email: ${i.email } <br>
</c:forEach>
<p></p>
<hr />
<p></p>
<!-- items: 배열 또는 컬렉션 -->
<c:forTokens var = "sel" items="솔데스크, 02-789-4561, 종로구" delims = ", ">
	&{sel}<br/>
</c:forTokens>
<hr />
<fmt:formatNumber value = "3.141592" pattern = "#.00"/>
<p></p>
<% java.util.Date now = new java.util.Date();
	pageContext.setAttribute("currentDate", now);
%>
<fmt:formatDate value = "${currentDate }" pattern = "yyyy-MM-dd HH:mm:ss" /><br />
<fmt:formatDate value = "${currentDate }" pattern = "HH/dd/yyyy" /><br />
<fmt:formatDate value = "${currentDate }" pattern = "HH:mm:ss" /><br />

</body>
</html>