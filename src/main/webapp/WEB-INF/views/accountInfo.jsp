<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/css/styles.css">
</head>
<body>
	<jsp:include page="_header.jsp" />
	<jsp:include page="_menu.jsp" />
	
	<div class="accountinfo-container">
		<h3>Your Account Information</h3>
		<ul class="">
			<li>Name: ${accountInfo.name}</li>
			<li>Address: ${accountInfo.address}</li>
			<li>Email: ${accountInfo.email}</li>
			<li>Phone: ${accountInfo.phone}</li>
		</ul>
		<div class="edit-btn">
			<a class="edit-link" href="${contextPath}/editAccountInfo">Edit Your Information</a>
		</div>
	</div>
	
	<div class="orderlist-container">
		<c:if test = "${not empty accountOrderList}">
			<table>
				<tr>
					<th>No</th>
					<th>Created Date</th>
					<th>Amount</th>
					<th>View Detail</th>
				</tr>
				<c:forEach items="${accountOrderList}" var="orderInfo" varStatus="varStatus">
					<tr>
						<td>${varStatus.index + 1}</td>
						<td>${orderInfo.orderDate}</td>
						<td style="color: red;font-weight:bold;">
							${orderInfo.amount}	
						</td>
						<td>
							<a href="${contextPath}/order?orderId=${orderInfo.id}">View</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	
	<jsp:include page="_footer.jsp" />
</body>
</html>