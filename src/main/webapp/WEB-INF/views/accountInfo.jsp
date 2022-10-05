<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
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
<<<<<<< HEAD
		<ul>
=======
		<ul class="">
>>>>>>> 5151bdeec011411d555f250d5c86c465f96471e6
			<li>Name: ${accountInfo.name}</li>
			<li>Address: ${accountInfo.address}</li>
			<li>Email: ${accountInfo.email}</li>
			<li>Phone: ${accountInfo.phone}</li>
		</ul>
		<form class="edit-btn" method="POST" action="">
			<input type="submit" value="Accept" class="btn-confirmation"/>
			<a href="${contextPath}/editAccountInfo">Edit Your Information</a>
		</form>
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
						<td style="color: red;">
							<fmt:formatNumber value="${orderInfo.amount}" type="currency" />		
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