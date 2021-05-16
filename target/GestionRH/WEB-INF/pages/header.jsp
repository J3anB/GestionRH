<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="index" style="color: #0080ff">GestionRH</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="index"><spring:message code="navbar.accueil" /></a></li>		
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="contactUs"><spring:message code="navbar.contact" /></a></li>
				<li class="nav-item"><a class="nav-link" aria-current="page"
					href="aboutUs"><spring:message code="navbar.aboutUs" /></a></li>
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="managerList"><spring:message code="navbar.manager" /></a></li>
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="employeeList"><spring:message code="navbar.employee" /></a></li>
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="parametres"><spring:message code="navbar.parametres" /></a></li>
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="?lang=fr"> 🇫🇷</a></li>
				<li class="nav-item"><a class="nav-link " aria-current="page"
					href="?lang=en"> 🇬🇧</a></li>
			</ul>
			<form class="d-flex">
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-outline-primary"
					data-bs-toggle="modal" data-bs-target="#loginBackdrop"><spring:message code="navbar.login" /></button>
				<!-- 				<button type="button" class="btn btn-outline-secondary btn-sm"> -->
				<!-- 					Logout</button> -->
			</form>
		</div>
	</div>
</nav>

<!-- End navbar -->
