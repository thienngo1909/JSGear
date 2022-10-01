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
			<tr>
				<td><form:input type="hidden" path="id" name="id" autofocus="autofocus"/></td>
				<td><form:errors type="hidden" path="id" name="id" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Name *</td>
				<td><form:input path="name" name="name" autofocus="autofocus"/></td>
				<td><form:errors path="name" name="name" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Address *</td>
				<td><form:input path="address" name="address"/></td>
				<td><form:errors path="address" name="address" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Email *</td>
				<td><form:input path="email"  name="email"/></td>
				<td><form:errors path="email" name="email" class="error-message" /> </td>
			</tr>
			<tr class="row-form-customer">
				<td>Phone *</td>
				<td><form:input path="phone"   name="phone"/></td>
				<td><form:errors path="phone" name="phone" class="error-message" /> </td>
			</tr>		
		</table>
		<input class="btn-customer-form" type = "submit" value = "Submit Form">
		<input class="btn-customer-form" type = "reset" value = "Reset Form">
	</form:form>
	
	
	<jsp:include page="_footer.jsp" />
</body>
</html>