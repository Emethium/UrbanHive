<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title><spring:message code="message.form.header" /></title>
</head>
<body>
	<form:form action="${spring:mvcUrl('createMessage').build()}"
		method="post" commandName="messageForm">
		<div>
			<label for="name"> <spring:message code="message.form.name" />
			</label>
			<form:input path="name" />
			<form:errors path="name" />
		</div>
		<div>
			<label for="country"> <spring:message
					code="message.form.country" />
			</label>
			<form:input path="country" />
			<form:errors path="country" />
		</div>
		<div>
			<label for="title"> <spring:message
					code="message.form.title" />
			</label>
			<form:input path="title" />
			<form:errors path="title" />
		</div>
		<div>
			<label for="messageBody"> <spring:message
					code="message.form.body" />
			</label>
			<form:input path="messageBody" />
			<form:errors path="messageBody" />
		</div>
		
		<div>
			<input type="submit" value="send" />
		</div>
	</form:form>
</body>
</html>
