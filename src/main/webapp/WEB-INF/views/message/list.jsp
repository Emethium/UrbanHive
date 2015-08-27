<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Message list :</title>
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
			<td>Name</td>
			<td>Country</td>
      <td>Title</td>
      <td>Body</td>
		</tr>
		<c:forEach items="${mailman}" var="messageBody">
			<tr>
				<td>${messageBody.name }</td>
				<td>${messageBody.country }</td>
        <td>${messageBody.title }</td>
        <td>${messageBody.body }</td>
			</tr>
		</c:forEach>
	</table>
	<footer>
		<a href="${spring:mvcUrl("add").build()}">Adicionar novo professor</a>
	</footer>
</body>
</html>
