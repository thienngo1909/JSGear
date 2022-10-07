<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Customer Order Detail</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />

	<jsp:include page="_menu.jsp" />
	
	<div class="back-btn">
		<a class="back-link" href="${contextPath}/manageCustomerOrder">Go Back</a>
	</div>
	
	<div class="page-title">
		<h3>Order List</h3>
	</div>
	<div class="orderDetaillist-container">
		<c:if test = "${not empty orderDetailList}">
			<table>
				<tr>
					<th>No</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Amount</th>
				</tr>
				<c:forEach items="${orderDetailList}" var="orderDetailInfo" varStatus="varStatus">
					<tr>
						<td>${varStatus.index + 1}</td>
						<td>${orderDetailInfo.productName}</td>
						<td>${orderDetailInfo.price}</td>
						<td>${orderDetailInfo.quantity}</td>
						<td style="color: red;font-weight:bold;">
						${orderDetailInfo.amount}							
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>


	<jsp:include page="_footer.jsp" />
</body>
</html>