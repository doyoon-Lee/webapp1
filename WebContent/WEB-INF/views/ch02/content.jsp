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
					<h5>요청 매핑</h5>
					<div>
						GET 방식 : <a class="btn btn-info btn-sm" href="getMethod">request1</a> <!-- get방식 -->
						<br/><br/>
						POST 방식:
						<form method="post" action="postMethod" style="display: inline-block;"> <!-- post방식 -->
							<button class="btn btn-info btn-sm">request1</button>
						</form>
					</div>
				</div>
				
				<div class="sector">
					<h5>요청 방식 별 회원 가입 처리</h5>
					<div>
						GET 방식 : <a class="btn btn-info btn-sm" 
						href="join">회원가입</a> <!-- get방식 -->
						
					</div>
				</div>
				
				<div class="sector">
					<h5>비동기 처리</h5>
					<div>
						GET 방식 : <a class="btn btn-info btn-sm" href="javascript:fun1()">회원가입</a> <!-- get방식 -->
						<script>
							
						function fun1() {
							$.ajax({
								url:"joinAsync",
								method: "get",
								success: function(data){
									$("#joinForm").html(data);
								}
								
							});
						}; 
						//위와 같음
						/*  const fun1 = () => {
								$.ajax({
									url:"joinAsync",
									method: "get",
									success: (data)=>{
										$("#joinForm").html(data);
									}
									
								});
							}; */ 
							
						
						</script>
						<div div id="joinForm" style="margin-top: 10px"></div>
					</div >
				</div>
		
				
			</div>
		</div>

	</div>
</body>
</html>