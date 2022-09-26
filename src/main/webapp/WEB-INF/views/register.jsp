<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register new account</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />

	<div class="page-title">Register</div>

	<div class="register-container">

		<h1>Register</h1>
		<br>
		<div class="register-form">
			<form method="POST" modelAttribute="registerForm" action="${contextPath}/register">
				<div class="register-input-group">
					<span class="register-input-group-username"><i
						class="fas fa-user-alt"></i></span> <input name="userName" path="userName" type="text"
						placeholder="UserName......" />
				</div>
				<div class="register-input-group">
					<span class="register-input-group-password"><i
						class="fa fa-lock"></i></span> <input name="password" path="password" type="password"
						placeholder="Password......" />
				</div>
				<div class="register-input-group">
					<span class="register-input-group-name"><i
						class="fas fa-address-card"></i></span> <input name="name" path="name"
						type="text" placeholder="Fullname......" />
				</div>
				<div class="register-input-group">
					<span class="register-input-group-address"><i
						class="fas fa-address-book"></i></span> <input name="address" path="address"
						type="text" placeholder="Address......" />
				</div>
				<div class="register-input-group">
					<span class="register-input-group-email"><i
						class="fas fa-envelope-square"></i></span> <input name="email" path="email"
						type="text" placeholder="Email......" />
				</div>
				<div class="register-input-group">
					<span class="register-input-group-phone"><i
						class="fas fa-phone"></i></span> <input name="phone" path="phone" type="text"
						placeholder="Phone......" />
				</div>
				<div class="register-button">
					<input type="submit" value="Register" />
				</div>
			</form>
			<span class="error-message">${error }</span>
		</div>

	</div>




	</div>

	<jsp:include page="_footer.jsp" />
</body>
</html>