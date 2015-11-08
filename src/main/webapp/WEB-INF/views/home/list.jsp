<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title><spring:message code="message.secret.header" /></title>
</head>
<body>
	${sucess}
	<spring:hasBindErrors name="messageForm">
		<ul>
			<c:forEach var="error" items="${errors.allErrors }">
				<li>${error.code }-${error.field}</li>
			</c:forEach>
		</ul>
	</spring:hasBindErrors>
	<table>
		<tr>
			<td><spring:message code="message.secret.name" /></td>
			<td><spring:message code="message.secret.country" /></td>
			<td><spring:message code="message.secret.title" /></td>
			<td><spring:message code="message.secret.body" /></td>
		</tr>
		<c:forEach items="${mailman}" var="messageBody">
			<tr>
				<td>${messageBody.name }</td>
				<td>${messageBody.country }</td>
				<td>${messageBody.title }</td>
				<td>${messageBody.messageBody }</td>
			</tr>
		</c:forEach>
	</table>
	<footer>
		<a href="${spring:mvcUrl("add").build()}"><spring:message
				code="message.secret.footer" /></a>
	</footer>
</body>
</html>
