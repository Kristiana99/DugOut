<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<main class="login-form">
		<h2>로그인</h2>
		<form action="/Users/Login" method="post">
			<div class="login-id">
				<div>아이디</div>
				<input type="text" class="idBox" name="userId" id="userId" value="admin">
			</div>
			<div class="login-pw">
				<div>비밀번호</div>
				<input type="password" class="pwBox" name="password" id="password" >
			</div>		
			<button type="submit" class="btn-login">로그인</button>	
			<div><a href="#">비밀번호를 잊으셨나요?</a></div>
			<div><a href="/Users/WriteForm">회원가입</a></div> 
		</form>
	</main>
</body>
</html>