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
			<c:if test="${not empty productForm.code}">
				<tr>
					<td>Code *</td>
					<td>"${productForm.code}"</td>
					<td><form:hidden path="code" /></td>
				</tr>
			</c:if>
			<c:if test="${empty productForm.code}">
				<tr>
					<td>Code *</td>
					<td><form:input path="code" /></td>
					<td><form:hidden path="newProduct" /></td>
				</tr>
			</c:if>
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
				<td>Category:</td>
				<td><form:select path="category" >
					<form:option value="MOUSE">MOUSE</form:option>
					<form:option value="KEYBOAD">KEYBOAD</form:option>
				</form:select></td>
			</tr>
			<tr>
				<td>Producer </td>
				<td><form:select path="producer" >
					<form:option value="ASUS">ASUS</form:option>
					<form:option value="gigabyte">GIGABITE</form:option>
				</form:select></td>
			</tr>
			<c:if test="${not empty detail.id}"></c:if>
			<tr>
				<td><form:hidden path="detail.id" /></td>
			</tr>
			<tr>
				<td>Color</td>
				<td><form:input path="detail.color" /></td>
			</tr>
			<tr>
				<td>Insurance</td>
				<td><form:input path="detail.Insurance" /></td>
			</tr>
			<tr>
				<td>Weight</td>
				<td><form:input path="detail.weight" /></td>
			</tr>
			<tr>
				<td>Specification</td>
				<td><form:textarea path="detail.specification" />
			</tr>
			<%-- <tr>
				<td>Image</td>
				<td><img
					src="${contextPath}/productImage?code=${productForm.code}"
					width="100" /></td>
				<td></td>
			</tr>
			<tr>
				<td>Upload Image</td>
				<td><form:input type="file" path="fileData" /></td>
				<td></td>
			</tr> --%>

			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Submit" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>

	</form:form>

</body>
</html>