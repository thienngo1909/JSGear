<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="name" value="${pageContext.request.userPrincipal.name}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<div class="header-container">
		<h4>Welcome to JSGear World</h4>
		<div class="header-bar">
			<c:if test="${name != null}">
				<ul>
					<li><a href="${contextPath}/accountInfo">Hello: ${name}</a></li>
					<li><a href="${contextPath}/logout">Logout</a></li>
					<security:authorize access="hasRole('ROLE_SUPER_ADMIN')">
						<li><a href="${contextPath}/getAllAcount">Edit</a></li>
					</security:authorize>
				</ul>



			</c:if>
			<ul>
				<c:if test="${name == null}">
					<li><a href="${contextPath}/register">Sign up</a></li>
					<li><a href="${contextPath}/login">Login</a></li>
				</c:if>
			</ul>

		</div>
	</div>
</body>
</html>