<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="title" required="true"%>
<%@ attribute name="scripts" fragment="true" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Spring MVC | ${title }</title>
	<link rel="stylesheet" type="text/css"
		href="<c:url value="/resources/css/bootstrap.min.css"/>">
	</head>
	<body>
			
			<div class="container">
			<div class="page-header">
			    <h1>Spring MVC - Exemplo</h1>
			 	<ul class="nav justify-content-end">
				  <li class="nav-item">
				    <a class="nav-link active" href="#">Active</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Link</a>
				  </li>
				  <li class="nav-item">
				    <a class="nav-link" href="#">Link</a>
				  </li>
				</ul>
		</div>
				<jsp:doBody />
			</div>
			<footer><p>&copy; Todos os Direitos Reservados</p></footer>			
			<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
			<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
			<jsp:invoke fragment="scripts"></jsp:invoke>
	</body>
</html>