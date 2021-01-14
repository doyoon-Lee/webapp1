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
					<h5>Model 객체를 이용한 스칼라 전달</h5>
					<div>
						<a class="btn btn-info btn-sm" 
						href="method1">스칼라전달</a>
					</div>
				</div>	
				<div class="sector">
					<h5>Model 객체를 이용한 객체 전달</h5>
					<div>
						<a class="btn btn-info btn-sm" 
						href="method2">객체전달</a>
					</div>
				</div>		
				<div class="sector">
					<h5>Model 객체를 이용한 컬렉션 전달</h5>
					<div>
						<a class="btn btn-info btn-sm" 
						href="method3">컬렉션전달</a>
					</div>
				</div>									
			</div>
		</div>
	</div>
</body>
</html>