<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach var="fileName" items="${fileNames}">
	<div style="display: flex; align-items: center; margin-bottom: 10px;">
		<a href="photodownload?photo=${fileName}">${fileName}</a>
		<img src="photodownload?photo=${fileName}" width="40px" height="40px" 
		class="rounded-circle" style="margin-right: 10px;"/>
		
	</div>
</c:forEach>
