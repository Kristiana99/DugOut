<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 생성</title>
<link rel="shortcut icon" href="/img/favicon.png" type="image/x-icon">
<link href="/css/common.css" rel="stylesheet" />
</head>
<body>
<!-- header -->
	<%@ include file="/WEB-INF/include/header.jsp" %>
	
	<main>
		<h2>사용자 등록</h2>
		<form action="/Users/Write" method="post">
			<table>
				<tr>
					<td>새 아이디</td>
					<td>
						<input type="text" name="userId" id="userId">
						<input type="button" id="idCheck" value="중복확인">
						<br>
						<span id="idMsg"></span>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="password" id="password">
						<br>
						<span id="pwMsg1"></span>
					</td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td>
						<input type="password" name="password2" id="password2"/>
						<br>
						<span id="pwMsg2"></span>
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" name="userName" id="userName">
						<br>
						<span id="nameMsg"></span>
					</td>
				</tr>				
				<tr>
					<td>이메일</td>
					<td>
						<input type="email" name="email" id="email">
						<br>
						<span id="emailMsg"></span>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="추가" />
						<input type="button" value="목록"
									onclick = "location.href='/Users/List'" 
						/>
					</td>
				</tr>
			</table>
		</form>
	</main>
	<!-- footer -->
	<%@ include file="/WEB-INF/include/footer.jsp" %>
	
	<script>

			//메세지 표시하기
		function showMsg(spanId, msg, isOk ){
			const span = document.getElementById(spanId);
			span.innerText = msg;
			span.style.color = isOk ? 'blue' : 'red' ;
			span.style.fontSize = '12px';
		}
			// 메세지 지우기
		function clearMsg(spanId){
				document.getElementById(spanId).innerText = '';
		}
			
			
			// 아이디 중복확인 변수 -> 중복확인 했는지 체크용
		let idChecked = false;
			
			// 아이디 중복확인 버튼을 클릭
		document.getElementById('idCheck').addEventListener('click', function(){
			const userId = document.getElementById('userId').value;
			
			if (userId === ''){
				showMsg('idMsg', '아이디를 입력해 주세요.', false);
				return;
			}
		
			fetch('/Users/IdCheck?userId=' + userId)
			.then(res => res.text())
			.then(result => {
				if(result === 'ok'){
					showMsg('idMsg','사용 가능한 아이디입니다	.', true);
					idChecked = true;
				} else {
					showMsg('idMsg','이미 사용중인 아이디입니다.', false);
					idChecked = false;
				}
			});
		})//click
		
			//비밀번호 확인
		document.getElementById('password2').addEventListener('input', function(){
			const pw1 = document.getElementById('password').value;
			const pw2 = document.getElementById('password2').value;
		
			if(pw2 === ''){
				clearMsg('pwMsg2');
				return;
			}
			
			if(pw1 === pw2){
				showMsg('pwMsg2','비밀번호가 일치합니다.', true);
			}else {
				showMsg('pwMsg2','비밀번호가 일치하지 않습니다', false);
			}
		});//input		


	</script>
</body>
</html>