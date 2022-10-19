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
<title>Manage Customer Order</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />

	<jsp:include page="_menu.jsp" />

	<div class="page-title">
		<h3 style="color: black">Order List</h3>
		<h3 style="color: navy;">Total order: ${orderQuantity}</h3>
	</div>
	<div class="orderlist-container">
		<c:if test = "${not empty paginationOrderInfos}">
			<table>
				<tr>
					<th>No</th>
					<th>Created Date</th>
					<th>Customer</th>
					<th>Amount</th>
					<th>View Detail</th>
				</tr>
				<c:forEach items="${paginationOrderInfos.list}" var="orderInfo" varStatus="varStatus">
					<tr>
						<td>${varStatus.index + 1}</td>
						<td>${orderInfo.orderDate}</td>
						<td>${orderInfo.accountName}
						<td style="color: red;">
							<fmt:formatNumber value="${orderInfo.amount}" type="currency" />		
						</td>
						<td>
							<a href="${contextPath}/manageCustomerOrderDetail?orderId=${orderInfo.id}">View</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>


	<jsp:include page="_footer.jsp" />
</body>
</html>