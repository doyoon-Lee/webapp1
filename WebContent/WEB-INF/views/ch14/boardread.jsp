<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/main.css">
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
					<div class="alert alert-primary" role="alert">
						게시물 보기
					</div>
					<form name="boardwriteform" action="boardwrite" method="post">
						<div class="form-group">
						    <label for="btitle">제목</label>
						    <input type="text" value="${board.btitle}" readonly class="form-control" id="btitle" name="btitle">
						</div>
						<div class="form-group">
						    <label for="bwriter">글쓴이</label>
						    <input type="text" value="${board.bwriter}" readonly class="form-control" id="bwriter" name="bwriter">
						</div>
						<div class="form-group">
						    <label for="bdate">글쓴 날짜</label>
						    <input type="date" 
						    		value='<fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"/>'
						    		readonly  class="form-control" id="bdate" name="bdate">
						</div>
						<div class="form-group">
						    <label for="bhitcount">조회수</label>
						    <input type="text" value="${board.bhitcount}" readonly class="form-control" id="bhitcount" name="bhitcount">
						</div>
						<div class="form-group">
							<label for="bcontent">내용</label>
						    <textarea class="form-control" id="bcontent" name="bcontent" rows="5" cols="50" readonly>${board.bcontent}</textarea>	    
						</div>
						<div class="form-group">
							<label for="battach">첨부</label>
							<c:if test="${board.battachsname != null}">
								<img class="rounded" src="battach?bno=${board.bno}" width="200px"/>
								<a class="btn btn-danger ml-2" href="battach?bno=${board.bno}">다운로드</a>
							</c:if>
						</div>
							<a class="btn btn-primary" href="boardlist2">목록</a>
							<c:if test="${sessionMid == board.bwriter}">
								<a class="btn btn-warning" href="boardupdate?bno=${board.bno}">수정</a>
								<a class="btn btn-danger" href="boarddelete?bno=${board.bno}">삭제</a>
							</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>