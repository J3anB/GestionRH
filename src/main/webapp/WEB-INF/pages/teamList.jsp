<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%><!-- Navbar -->
<c:forEach var="listMana" items="${listMana}">
<table class="table table-striped table-hover" data-toggle="table"
	 data-show-columns="true">
	<thead>
		<tr>
			<th data-sortable="true" data-field="id">ID</th>
			<th data-sortable="true" data-field="firstName" scope="col"><spring:message
					code="employeelist.prenom" /></th>
			<th data-sortable="true" data-field="lastName" scope="col"><spring:message
					code="employeelist.nom" /></th>
			<th data-sortable="true" data-field="title" scope="col"><spring:message
					code="employeelist.titre" /></th>
			<th data-sortable="true" data-field="date" scope="col"><spring:message
					code="employeelist.date" /></th>

		</tr>
	</thead>

	<tbody>
		<c:forEach var="manaTeam" items="${manaTeam}">
			<tr>
				<td data-field="id"><c:out value="${manaTeam.empID}" /></td>
				<td data-field="firstName"><c:out value="${manaTeam.firstName}" /></td>
				<td data-field="lastName"><c:out value="${manaTeam.lastName}" /></td>
				<td data-field="title"><c:out value="${manaTeam.title}" /></td>
				<td data-field="date"><c:out value="${manaTeam.startDate}" /></td>

			</tr>
		</c:forEach>

	</tbody>
</table>
		</c:forEach>
