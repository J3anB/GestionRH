<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- custome CSS -->
<link rel="stylesheet" type="text/css" href="styles/manager.css" />
<script type="javascript" src="js/manager.js"></script>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link
	href="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.css"
	rel="stylesheet">
<title>Managers List</title>
</head>
<body>
	<div class="page">
		<!-- Navbar -->
		<jsp:include page="header.jsp" />
		<!-- End navbar -->


		<div class="content">



			<!-- Manager table Card -->

			<div class="card card-manager">
				<div class="card-body">
					<div class="input-group mb-3">
						<h3>
							<span>Manager </span>List
						</h3>
					</div>
					<!-- Manager Table -->
					<table class="table table-striped table-hover " data-toggle="table"
						data-search="true" data-show-columns="true" data-pagination="true">
						<thead>
							<tr>
								<th data-sortable="true" data-field="id" data-field="id">ID</th>
								<th data-sortable="true" data-field="firstName" scope="col"><spring:message code="employeelist.prenom" /></th>
								<th data-sortable="true" data-field="lastName" scope="col"><spring:message code="employeelist.nom" /></th>
								<th data-sortable="true" data-field="title" scope="col"><spring:message code="employeelist.titre" /></th>
								<th data-sortable="true" data-field="startDater" scope="col"><spring:message code="employeelist.date" /></th>
								<th  scope="col">Action</th>
								<!-- <th data-field="manager" scope="col">Manager</th> -->
							</tr>
						</thead>
							<tbody>
						<c:forEach var="listMana" items="${listMana}">
								<!--  main table 1-->
								<tr>
									<td><c:out value="${listMana.empID}" /></td>
									<td><c:out value="${listMana.firstName}" /></td>
									<td><c:out value="${listMana.lastName}" /></td>
									<td><c:out value="${listMana.title}" /></td>
									<td><c:out value="${listMana.startDate}" /></td>
									<td><a class="btn btn-outline-secondary btn-sm"
										href="teamEmployee?empID=${listMana.empID}" role="button"><spring:message code="employeelist.team" /></a>
										<input id="empID" name="empID" type="hidden"
										value="${listMana.empID}" /></td>
								</tr>
						</c:forEach>
						</tbody>
					</table>
					<!-- End manager Table -->
				</div>
			</div>
			<!-- end Manager table card -->
		</div>
		<!-- end Container -->

		<!-- footer -->
		<jsp:include page="footer.jsp" />
		<!-- End footer -->


	</div>
	<!-- end page -->

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
		crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
	<script
		src="https://unpkg.com/bootstrap-table@1.16.0/dist/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>
	<script
		src="https://unpkg.com/multiple-select@1.5.2/dist/multiple-select.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
    -->
</body>
</html>
