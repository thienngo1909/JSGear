<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">

</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_menu.jsp"></jsp:include>
	<fmt:setLocale value="en_US" scope="session" />

	<div class="page-title">
		<label>Product List</label>
		<button href="${contextPath}/product" class="btn-create-product">Create new</button>
	</div>

	<c:forEach items="${paginationProductInfos.list}" var="productInfo">

		<div class="product-preview-container">
			<ul>
				<a href="${contextPath}/productInfo?code=${productInfo.code}">
					<li><img class="product-image"
						src="${contextPath}/productImage?code=${productInfo.code}" />
				<li>Name: ${productInfo.name}</li>
					<li>Quantity: ${productInfo.quantity}</li>
					<li>Price: <fmt:formatNumber value="${productInfo.price}"
							type="currency" /></li>
				</a>
				<li><a
					href="${contextPath}/buyProduct?code=${productInfo.code}">Buy
						Now</a></li>

				<security:authorize access="hasRole('ROLE_MANAGER')">
					<li><a href="${contextPath}/deleteProduct?code=${productInfo.code}">Delete</a></li>
					<li><a href="${contextPath}/product?code=${productInfo.code}">Edit</a></li>
				</security:authorize>
			</ul>
		</div>
	</c:forEach>
	<br />
	<a href="${contextPath}/product">Create new</a>


	<c:if test="${paginationProductInfos.totalPages > 1}">
		<div class="page-navigator">

			<c:forEach items="${paginationProductInfos.navigationPages}"
				var="page">
				<c:if test="${page != -1 }">
					<a href="productList?page=${page}" class="nav-item">${page}
				</c:if>
				<c:if test="${page == -1 }">
					<span class="nav-item"> ... </span>
				</c:if>
			</c:forEach>

		</div>
	</c:if>


	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>