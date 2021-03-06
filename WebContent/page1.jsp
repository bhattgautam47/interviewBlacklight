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
<title>User ID Page</title>
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
				<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill"
					href="#v-pills-home" role="tab" aria-controls="v-pills-home"
					aria-selected="true">User Details</a> <a class="nav-link"
					id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile"
					role="tab" aria-controls="v-pills-profile" aria-selected="false">Match
					Details </a>
			</div>
		</div>
		<div class="col-9 border">
			<div class="tab-content" id="v-pills-tabContent">
				<div class="tab-pane fade show active" id="v-pills-home"
					role="tabpanel" aria-labelledby="v-pills-home-tab">
					<form class="form-inline" action="page1.jsp">
						<div class="form-group">
							<label>Enter User id:</label> <input type="text"
								class="form-control" id="user_id" name = "user_id">
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
              SELECT * FROM TEST1 WHERE User_ID =  <%=request.getParameter("user_id")%>;
     </sql:query>
					<table border="1" width="100%">
						<tbody>
							<c:forEach var="row" items="${result.rows}">
								<tr>
									<th scope="row">User ID</th>
									<td><c:out value="${row.User_ID}" /></td>
								</tr>
								<tr>
									<th scope="row">Name</th>
									<td><c:out value="${row.Name}" /></td>
								</tr>
								<tr>
									<th scope="row">Games Played</th>
									<td><c:out value="${row.Games_Played}" /></td>
								</tr>
								<tr>
									<th scope="row">Games Won</th>
									<td><c:out value="${row.GamesWon}" /></td>
								</tr>
								<tr>
									<th scope="row">Last Game ID</th>
									<td><c:out value="${row.LastGameID}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 1st tab -->
				<div class="tab-pane fade" id="v-pills-profile"
					role="tabpanel" aria-labelledby="v-pills-profile-tab">
					<form class="form-inline" action="pagematch.jsp">
						<div class="form-group">
							<label>Enter Match id:</label> <input type="text"
								class="form-control" id="user_id" name = "match_user_id">
						</div>
						<button type="submit" class="btn btn-primary">Go</button>
					</form>

				</div>
				<!-- 2nd tab -->

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

	<!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
</body>
</html>