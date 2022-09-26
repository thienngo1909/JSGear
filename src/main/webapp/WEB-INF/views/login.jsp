<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />

	<div class="page-title">Login (For Employee, Manager)</div>

	<div class="login-container">

		<h1>User Login</h1>
		<br>
		<!-- /login?error=true -->
		<c:if test="${param.error == 'true'}">
			<div style="color: red; margin: 10px 0px;">

				Login Failed!!!<br /> Reason :
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

			</div>
		</c:if>
		<div class="login-form">
			<form method="POST" action="${contextPath}/j_spring_security_check">
				<!-- <table class="login-table">
					<tr>
						<td>User Name *</td>
						<td><input name="userName" /></td>
					</tr>

					<tr>
						<td>Password *</td>
						<td><input type="password" name="password" /></td>
					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" value="Login" /> <input
							type="reset" value="Reset" /></td>
					</tr>
				</table>
				 -->
				 <div class="login-input-group">
				 	<span class="login-input-group-username"><i class="fas fa-user-alt"></i></span>
				 	<input name="userName" type="text" placeholder="User Name......"/>
				 </div>
				 <div class="login-input-group">
				 	<span class="login-input-group-password"><i class="fa fa-lock"></i></span>
				 	<input name="password" type="password" placeholder="Password......"/>
				 </div>
				 <div class="login-button">
				 	<input type="submit" value="Login"/>			 	
				 </div>
				 <div>
				 	<a href="${contextPath}/register">Register new account</a>
				 </div>
			</form>
			<span class="error-message">${error }</span>
		</div>




	</div>

	<jsp:include page="_footer.jsp" />
</body>
</html>