<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/resources/assets/css/bootstrap.min.css" var="min" />
<link href="${min}" rel="stylesheet">
<spring:url value="/resources/assets/css/font-awesome.min.css"
	var="font" />
<link href="${font}" rel="stylesheet">
<spring:url value="/resources/assets/css/style.css" var="style" />
<link href="${style}" rel="stylesheet">
<spring:url value="/resources/images/background/page-top.jpg" var="back" />

<title><spring:message code="message.form.header" /></title>
</head>

<body background="${back}">
	<div id="main-menu" class="navbar navbar-default navbar-fixed-top"
		role="navigation">

		<div class="navbar-header">
			<!-- responsive navigation -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <i class="fa fa-bars"></i>
			</button>
			<!-- /.navbar-toggle -->

		</div>
		<!-- /.navbar-header -->

		<nav class="collapse navbar-collapse">
			<!-- Main navigation -->
			<ul id="headernavigation" class="nav navbar-nav">
				<li class="active"><a href="${spring:mvcUrl("add").build()}">Home</a></li>
				<li><a href="#about">About</a></li>
			</ul>
			<!-- /.nav .navbar-nav -->
		</nav>
		<!-- /.navbar-collapse  -->
	</div>
	<!-- /#main-menu -->
	<!-- Main Menu End -->

	
	
	
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
			<label for="title"> <spring:message code="message.form.title" />
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
