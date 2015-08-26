<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Create your message! Be criative!</title>
</head>
<body>
	<form:form action="${spring:mvcUrl('createMessage').build()}"
		method="post" commandName="message">
		<div>
			<label for="name">Name:</label>
			<form:input path="name" />
			<form:errors path="name" />
		</div>
		<div>
			<label for="country">Country:</label>
			<form:input path="country" />
			<form:errors path="country" />
		</div>
		<div>
			<label for="title">Title:</label>
			<form:input path="title" />
			<form:errors path="title" />
		</div>
		<div>
			<label for="messageBody">Body:</label>
			<form:input path="messageBody" />
			<form:errors path="messageBody" />
		</div>
		<div>
			<input type="submit" value="Send" />
		</div>
	</form:form>
</body>
</html>
