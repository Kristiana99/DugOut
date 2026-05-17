<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet" />
</head>
<body>
	<header class="main-header">
		<div class="header-inner">
			<div class="header-logo">
				<span class="logo-icon">⚾</span>
				<span class="logo-text">KBO</span>
			</div>
			
			<nav class="header-nav">
				<ul>
					<li>
						<a href="/WEB-INF/views/home.jsp">
							홈
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/board/list.jsp">
							자유게시판
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/game.jsp">
							경기 일정
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/board/info.jsp">
							공지사항
						</a>
					</li>
				</ul>
			</nav>
			
			<div class="header-user">
				<span class="user-name">
					<i class="fas fa-user-circle"></i>
				</span>
				<a href="/Users/LoginForm" class="btn-login">로그인</a>
			</div>
		</div>
	</header>
</body>
</html>