<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
		if(${!empty msgType}) {
			$("#messageType").attr("class", "modal-content panel-success");
			$("#myMessage").modal("show");
		}
});
  </script>
</head>
<body>

	<div class="container">
		<jsp:include page="common/header.jsp" />
		<div class="panel panel-default">
			<div>
				<img src="${contextPath}/resources/images/main2.png"
					style="width: 100%; height: 400px;" />
			</div>
			<div class="panel-body">
				

				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<h3>HOME</h3>
						<p>스프링 게시판에 오신것을 환영합니다.</p>
					</div>
				</div>
			</div>
			<div class="panel-footer">차상학</div>

		</div>

	</div>
	<!-- 실패 메세지를 출력(modal) -->
	<div id="myMessage" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div id="messageType" class="modal-content panel-info">
				<div class="modal-header panel-heading">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">${msgType}</h4>
				</div>
				<div class="modal-body">
					<p>${msg}</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
