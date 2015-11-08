<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title><spring:message code="message.show.header" /></title>
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
			<td><spring:message code="message.show.name" /></td>
			<td><spring:message code="message.show.country" /></td>
			<td><spring:message code="message.show.title" /></td>
			<td><spring:message code="message.show.body" /></td>
		</tr>
		<tr>
			<td>${messageBody.name }</td>
			<td>${messageBody.country }</td>
			<td>${messageBody.title }</td>
			<td>${messageBody.messageBody }</td>
		</tr>
	</table>
</body>
</html>
