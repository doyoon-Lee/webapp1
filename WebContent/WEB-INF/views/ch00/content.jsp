<%-- page 지시자 
	language: .jsp 파일에서 사용되는 프로그래밍언어 (생략 가능)
	pageEncoding: .hsp 파일로 저장할 때 사용되는 문자셋(생략 가능)
	contentType: .jsp가 실행후 만들어지 결과물의 종류
		MIME 타입을 지정
			txt/html :문자 내용으로 html 태그로 구성된 것
			application/json: 문자 내용으로 json 표기로 구성된 것
			image/jpeg 이미니 내용으로 jpeg으로 인코딩한것
			jmage/png 이미지 내용으로 png로 인코딩한것
		문자셋 지정
			브라우저로 전달할때 사용되는 문자셋(문자내용은 반드시 기술을 해야함)
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- import 속성 --%>
<%@ page import="java.util.*, java.text.*"%>
<%@page import="java.text.*"%>


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
					<h5>스크립트릿 표현식</h5>
					<div>
						<%-- Scriptlet(스크립트릿) --%>

						<%Date now = new Date();
						SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
						String strnow = sdf.format(now);
						%>

						<%-- Expressions(표현식) --%>
						오늘 날짜:
						<%=strnow %>

					</div>
				</div>
				<div class="sector">
					<h5>스크립트릿 표현식</h5>
					<div>


						<%for(int i=1;i<=6;i++) {%>
						<h<%=i%>>Hello jsp</h<%=i%>>
						<%}%>

					</div>
				</div>
			</div>
		</div>
	</div>
	


</body>
</html>