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

<script src="http://code.jquery.com/jquery-1.10.2.min.js"type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	//var class = ".main";
	$('#incfont').click(function(){
		curSize= parseInt($('body.main').css('font-size')) + 2;
		if(curSize<=40) {
			$('body.main').css('font-size', curSize);
			document.getElementById('contact-message').style.fontSize = curSize + 2;
		}

	});
	$('#decfont').click(function(){
		curSize= parseInt($('.main').css('font-size')) - 2;
		if(curSize>=12)
			$('body.main').css('font-size', curSize);
	 });
});

</script>


</head>

<body background="${back}" class="main">


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
				<a href="#" id="incfont">A+</a>
				<a href="#" id="decfont">A-</a>
				<li class="active"><a href="${spring:mvcUrl("add").build()}">Home</a></li>
				<li class="active"><a href="${spring:mvcUrl("about").build()}">About</a></li>

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
					<span> Have a thought. Share with the world. </span>
				</h2>
				<!-- /.section-name -->
				<h3 class="section-name">
					<br><form:form id="contact-form"
						action="${spring:mvcUrl('createMessage').build()}" method="post"
						commandName="messageForm">
						<div class="contact-box-hide">
							<div class="col-sm-6">
								<form:input type="text" class="form-control" path="name"
									placeholder="YOUR NAME" />
								<form:errors path="name" />
							</div>
							<div class="col-sm-6">
								<form:input type="text" class="form-control" path="country"
									placeholder="THE COUNTRY YOU RESIDE" />
								<form:errors path="country" />
							</div>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" path="title"
									placeholder="GIVE US A TITLE" />
								<form:errors path="title" />
							</div>
							<div class="col-sm-10">
								<form:textarea class="form-control" rows="5" path="messageBody"
									placeholder="HERE GOES YOUR MESSAGE" />
								<form:errors path="messageBody" />
							</div>
							<div class="col-sm-2">
								<button id="contact-submit" class="btn custom-btn col-xs-12"
									type="submit" value="send" name="submit">
									<a href=""></a><i class="fa fa-rocket"></i>
								</button>
								<span id="contact-loading" class="btn custom-btn col-xs-12">
									<i class="fa fa-refresh fa-spin"></i>
								</span>
							</div>

						</div>
						<!-- /.contact-box-hide -->
						<div class="contact-message"></div>
					</form:form>

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
