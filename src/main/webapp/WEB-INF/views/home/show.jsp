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

<title><spring:message code="message.show.header" /></title>

</head>
<body background="${back}">
	${sucess}
	<spring:hasBindErrors name="messageForm">
		<ul>
			<c:forEach var="error" items="${errors.allErrors }">
				<li>${error.code }-${error.field}</li>
			</c:forEach>
		</ul>
	</spring:hasBindErrors>



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


	<!-- Page Top Section -->
	<section id="page-top" class="section-style"
		data-background-image="${background}">
		<div class="pattern height-resize">
			<div class="container">
				<h1 class="site-title">Urbanhive</h1>
				<!-- /.site-title -->
				<h2 class="section-title">
					<span> A wild message appeared! </span>
				</h2>
				<!-- /.section-name -->
				<h3 class="section-name">
					<br><span><spring:message code="message.show.name" /></span> <span>${messageBody.name }</span>
					<br><span><spring:message code="message.show.country" /></span> <span>${messageBody.country }</span>
					<br><span><spring:message code="message.show.title" /></span> <span>${messageBody.title }</span>
					<br><span><spring:message code="message.show.body" /></span> <span>${messageBody.messageBody }</span>
					<br><br><br><br><br><br><br><br><br><br>
				</h3>
				<!-- /.Section-title  -->





			</div>
			<!-- /.container -->
		</div>
		<!-- /.pattern -->
	</section>
	<!-- /#page-top -->
	<!-- Page Top Section  End -->


	<!-- jQuery Library -->
	<script type="text/javascript"
		src="/src/main/resources/assets/js/jquery-2.1.0.min.js"></script>
	<!-- Modernizr js -->
	<script type="text/javascript"
		src="/src/main/resources/assets/js/modernizr-2.8.0.min.js"></script>
	<!-- Plugins -->
	<script type="text/javascript"
		src="/src/main/resources/assets/js/plugins.js"></script>
	<!-- Custom JavaScript Functions -->
	<script type="text/javascript"
		src="/src/main/resources/assets/js/functions.js"></script>
	<!-- Custom JavaScript Functions -->
	<script type="text/javascript"
		src="/src/main/resources/assets/js/jquery.ajaxchimp.min.js"></script>

</body>
</html>
