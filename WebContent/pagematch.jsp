<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Page MatchUserID</title>
</head>
<body>
	<!-- Just an image -->
	<nav class=" p-3 mb-2 bg-warning text-dark text-center">
		<h1>BLACKLIGHT PANEL</h1>
	</nav>
	<div class="row">
		<div class="col-3 border">
			<div class="nav flex-column nav-pills" id="v-pills-tab"
				role="tablist" aria-orientation="vertical">
				<a class="nav-link " id="v-pills-home-tab" data-toggle="pill"
					href="#v-pills-home" role="tab" aria-controls="v-pills-home"
					aria-selected="true">User Details</a> 
					<a class="nav-link active"
					id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
					role="tab" aria-controls="v-pills-profile" aria-selected="false">Match
					Details </a>
			</div>
		</div>
		<div class="col-9 border">
			<div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-home"
					role="tabpanel" aria-labelledby="v-pills-home-tab">
					<form class="form-inline" action="pagematch.jsp" method="GET">
						<div class="form-group">
							<label>Enter Match id:</label> <input type="text"
								class="form-control" id="match_user_id" name="match_user_id">
						</div>
						<button type="submit" class="btn btn-primary">Go</button>
					</form>

					<%@ page import="java.io.*,java.util.*,java.sql.*"%>
					<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
					<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
						url="jdbc:mysql://localhost/sys" user="root"
						password="Gautambhatt@123" />
					<sql:query dataSource="${snapshot}" var="result">
              SELECT * FROM MatchTb WHERE Match_ID = <%= request.getParameter("match_user_id")%>;
     </sql:query>
					<table border="1" width="100%">
						<tbody>
							<c:forEach var="row" items="${result.rows}">
								<tr>
									<th scope="row">Match ID</th>
									<td><c:out value="${row.Match_ID}" /></td>
								</tr>
								<tr>
									<th scope="row">User1</th>
									<td><c:out value="${row.User1}" /></td>
								</tr>
								<tr>
									<th scope="row">User2</th>
									<td><c:out value="${row.User2}" /></td>
								</tr>
								<tr>
									<th scope="row">Match Start Time</th>
									<td><c:out value="${row.MST}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
		<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>