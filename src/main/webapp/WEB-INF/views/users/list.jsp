<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 목록</title>
</head>
<body>
	<main>
		<h2>회원 관리</h2>
		<table>
			<tr>
				<td>아이디</td>
				<td>비밀번호</td>
				<td>이름</td>
				<td>이메일</td>
				<td>역할</td>
				<td>등록일</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>
			<tr>
			<td colspan="8">
				|<a href="/Users/WriteForm"> 사용자 등록</a>|&nbsp;&nbsp;&nbsp;
				|<a href="/"> Home </a>|
			</tr>	
			<c:forEach var="user" items="${ userList }">
				<tr>
					<td>${user.userId }</td>
					<td>${user.password}</td>
					<td>${user.userName }</td>
					<td>${user.email }</td>
					<td>${user.role }</td>
					<td>${user.regdate }</td>
					<td><a href="/Users/UpdateForm?userId=${user.userId}">수정</a></td>
					<td><a href="/Users/Delete?userId=${user.userId}">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
	</main>
</body>
</html>