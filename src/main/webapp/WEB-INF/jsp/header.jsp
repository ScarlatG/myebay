<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My eBay</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/bootstrap.min.css'/>">
<!-- Font Awesome CSS -->
<link rel="stylesheet"
	href="<c:url value='/resources/css/font-awesome.min.css'/>">
<!-- Custom CSS -->
<link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="<c:url value='/'/>">My eBay</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mr-auto">
					<!-- Menu Items Here -->
				</ul>
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fa fa-user"></i> Welcome, <c:out
								value="${pageContext.request.userPrincipal.name}" />
					</a>
						<div class="dropdown-menu dropdown-menu-right"
							aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="<c:url value='/logout'/>"><i
								class="fa fa-sign-out"></i> Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- End Navigation Bar -->

	<!-- Page Content -->
	<div class="container-fluid">
		<!-- Page Content Goes Here -->
	</div>
	<!-- End Page Content -->

	<!-- jQuery -->
	<script src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>
	<!-- Bootstrap JS -->
	<script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
</body>
</html>
