<%@page import="model.MemberDTO"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세정보</title>
<link rel ="stylesheet" type = "text/css" href = "../css/member.css">
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");

MemberDAO mdao = new MemberDAO();
MemberDTO bean = mdao.oneSelectMember(id); //오라클 -> 자바(bean)
%>
<center>
      <h2>회원 상세정보</h2>
      <table width="400" border="1">
         <tr height="40">
            <td align="center" width="150">아이디</td>
            <td width="350"><%=bean.getId() %></td>
         </tr>
         <tr height="40">
            <td align="center" width="150">이메일</td>
            <td width="350"><%=bean.getEmail() %></td>
         </tr>
         <tr height="40">
            <td align="center" width="150">전화</td>
            <td width="350"><%=bean.getPhone() %></td>
         </tr>
         <tr height="40">
            <td align="center" width="150">취미</td>
            <td width="350"><%=bean.getHobby() %></td>
         </tr>
         <tr height="40">
            <td align="center" width="150">나이</td>
            <td width="350"><%=bean.getAge() %></td>
         </tr>
         <tr height="40">
            <td align="center" width="150">정보</td>
            <td width="350"><textarea cols="30" rows="5"><%=bean.getInfo() %></textarea> </td>
         </tr>
         <tr height="40">
         	<td align="center" colspan="2" bgcolor="skyblue">
         		<input type="button" value = "수정" onclick="location.href = 'MemberUpdate.jsp?id=<%=bean.getId()%>'"/>
         		<p></p>
         		<input type="button" value = "삭제" onclick="location.href = 'MemberDelete.jsp?id=<%=bean.getId()%>'"/>
         		<p></p>
         		<input type="button" value = "전체회원보기" onclick="location.href = 'MemberList.jsp'"/>
         		<p></p>
         	</td>
         </tr>
      </table>
</center>
</body>
</html>