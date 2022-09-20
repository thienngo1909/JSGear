<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
<link rel="stylesheet" type="text/css" enctype="multipart/form-data"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<form:form modelAttribute="productForm" method="POST"
		action="${contextPath}/product">
		<table style="text-align: left;">
			<tr>
				<td>Code *</td>
				<td><form:input path="code" /></td>
				<td><form:hidden path="newProduct" />
			</tr>
			<tr>
				<td>Name *</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Quantity *</td>
				<td><form:input path="quantity" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td>Category: </td>
				<td><form:input path="Category" /></td>
			</tr>
			<tr>
				<td>Producer </td>
				<td><form:input path="Producer" /></td>
			</tr>
			<tr>
				<td>ID </td>
				<td><form:input path="detail.id" /></td>
			</tr>
			<tr>
				<td>Color</td>
				<td><form:input path="detail.color" /></td>
			</tr>
			<tr>
				<td>Weight</td>
				<td><form:input path="detail.weight" /></td>
			</tr>
			<tr>
				<td>Specification</td>
				<td><form:input path="detail.specification"/>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Submit" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>

	</form:form>

</body>
</html>