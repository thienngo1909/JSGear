<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Your Information</title>
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

	<div class="page-title">Edit Your Information</div>

	<div class="form-accountInfo-container">

		<h1>Edit Your Information</h1>
		<br>
		<div class="accountInfo-form">
			<form:form method="POST" modelAttribute="accountInfoForm" action="${contextPath}/editAccountInfo">
				<div class="accountInfo-input-group">
						<form:input name="id" path="id" type="hidden" />
						<form:errors path="id" name="id" type="hidden" cssClass="error"/>	
				</div>
				<div class="accountInfo-input-group">
					<span class="accountInfo-input-group-name"><i
						class="fas fa-address-card"></i></span> <form:input name="name" path="name"
						type="text" placeholder="*Fullname......" />
						<form:errors path="name" name="name"  cssClass="error"/>	
				</div>
				<div class="accountInfo-input-group">
					<span class="accountInfo-input-group-address"><i
						class="fas fa-address-book"></i></span> <form:input name="address" path="address"
						type="text" placeholder="*Address......" />
						<form:errors path="address" name="address" cssClass="error"/>	
				</div>
				<div class="accountInfo-input-group">
					<span class="accountInfo-input-group-email"><i
						class="fas fa-envelope-square"></i></span> <form:input name="email" path="email"
						type="text" placeholder="*Email......" />
						<form:errors path="email" name="email"  cssClass="error"/>	
				</div>
				<div class="accountInfo-input-group">
					<span class="accountInfo-input-group-phone"><i
						class="fas fa-phone"></i></span> <form:input name="phone" path="phone" type="text"
						placeholder="*Phone......" />
						<form:errors path="phone" name="phone"  cssClass="error"/>	
				</div>
				<div class="accountInfo-button">
					<input type="submit" value="Edit" />
				</div>
			</form:form>
			<span class="error-message">${error }</span>
		</div>

	</div>




	</div>

	<jsp:include page="_footer.jsp" />
</body>
</html>