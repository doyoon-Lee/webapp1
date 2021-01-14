<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/main.css">
</head>

<body>
	<div class="wrap">
		<%-- 공통 헤더 --%>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<%-- <%@ include file="/WEB-INF/views/include/header.jsp" %> --%>
		<%-- 이렇게해도됨 --%>
		<%-- jsp:include는 파일결과를 불러와서 붙여넣기고 @include file은 그 jsp를 그냥 텍스트자체를 복사 붙여넣기임  --%>
		<%-- 공통 내용 --%>
		<div class="mainCenter">
			<jsp:include page="/WEB-INF/views/include/menu.jsp"></jsp:include>
			<%-- 공통 메뉴 --%>
			<div class="content">
				<div class="sector">
					<h5>EL(Expressions Language)로 스칼라값(숫자,문자열,논리값) 읽기</h5>
					<div>
						<div>이름: ${name}</div>
						<div>나이: ${age}</div>
						<div>직업: ${job}</div>
					</div>
				</div>
				<div class="sector">
					<h5>EL 객체의 데이터 읽기</h5>
					<div>
						<div>번호: ${board1.no}</div>
						<div>제목: ${board1.title}</div>
						<div>내용: ${board1.content}</div>
						<div>글쓴이: ${board1.writer}</div>
						<div>날짜: ${board1.date}</div>
					</div>
				</div>										
			</div>
		</div>
	</div>
</body>
</html>