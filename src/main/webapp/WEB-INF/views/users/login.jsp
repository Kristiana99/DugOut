<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<!-- header -->
	<%@ include file="/WEB-INF/include/header.jsp" %>
	
<main>
	<section class="login-form">
		<h2>로그인</h2>
		<form action="/Users/Login" method="post">
		
			<div class="login-id">
				<div>아이디</div>
				<input type="text" class="idBox" name="userId" id="userId" placeholder="아이디를 입력해주세요.">
			</div>
			
			<div class="login-pw">
				<div>비밀번호</div>
				<input type="password" class="pwBox" name="password" id="password" placeholder="비밀번호를 입력해주세요.">
			</div>		
			
			<button type="submit" class="btn-login">로그인</button>	
			<div id="find-pw"><a href="#">비밀번호를 잊으셨나요?</a></div>
			<div id="reg-id"><a href="/Users/WriteForm">회원가입</a></div> 
		</form>
	</section>
	</main>
<!-- footer -->
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>