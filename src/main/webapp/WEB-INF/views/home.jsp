<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DugOut</title>
<link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet" />
</head>
<body>
	<main>
<!-- header -->
		<%@ include file="/WEB-INF/include/header.jsp" %>

<!-- main banner -->
		<section id="main-bn">
			<div id="main-title">
				<h1>DUGOUT</h1>
				<p>
						대한민국 최고의 야구 커뮤니티 <br>
						여기서 뜨겁게 이야기하세요
				</p>
			</div>
		</section>
<!-- content box -->
		<section class="boardSection">
			<div class="boardBox">
				<div><a href="/Users/List">자유게시판</a></div>								
			</div>
			<div class="boardBox">
				<div><a href="/Users/List">공지사항</a></div>				
			</div>
			<div class="boardBox">
				<div><a href="/Users/List">팬 리스트</a></div>
				
			</div>
		</section>
<!-- footer -->
		<%@ include file="/WEB-INF/include/footer.jsp" %>
	</main>
</body>

</html>