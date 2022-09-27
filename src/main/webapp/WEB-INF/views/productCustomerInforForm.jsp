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
<title>Customer InforForm</title>
<link rel="stylesheet" type="text/css" href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />
	<div class="page-title-form">
		<p>Customer's Information</p>
		<h3>Please fill in your information and we'll be sending your order in no time</h3>
	</div>
	
	<form:form method="POST" modelAttribute="customerForm" action="${contextPath}/customerInfo">
		<table class= "form-customer">
			<tr class="row-form-customer">
				<td>Name *</td>
				<td><form:input path="name" autofocus="autofocus"/></td>
				<td><form:errors path="name" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Address *</td>
				<td><form:input path="address"/></td>
				<td><form:errors path="address" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Email *</td>
				<td><form:input path="email"/></td>
				<td><form:errors path="email" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Phone *</td>
				<td><form:input path="phone"/></td>
				<td><form:errors path="phone" class="error-message" /> </td>
			</tr>		
		</table>
		<input class="btn-customer-form" type = "submit" value = "Submit Form">
		<input class="btn-customer-form" type = "reset" value = "Reset Form">
	</form:form>
	
	
	<jsp:include page="_footer.jsp" />
</body>
</html>