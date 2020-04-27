<!DOCTYPE HTML>
<html lang="en">
<title>TMS - Dashboard</title>
</head>
<body>
	<div>
		<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
	</div>
	<br>
	<div align="center">
		<p class="shadow-red-nou">Hello ${name} !</p>
	</div>
	<hr color="#fc3955">
	<div id="listParticipant">
		<div class="container" style="background-color: #f2f2f2">
			<p class="shadow-red-nou">Total no of participants you have
				registered are : ${total}</p>
			<div style="overflow-x: auto;">
				<table class="table table-striped" style="font-size: 14px">
					<caption>Here are the participants you have registered</caption>
					<thead>
						<tr>
							<th>Name</th>
							<th>Age</th>
							<th>Height</th>
							<th>Weight</th>
							<th>Gender</th>
							<th>Belt</th>
							<th>DojoName</th>
							<th>SenseiName</th>
							<th>Mobile</th>
							<th>TournamentName</th>
							<th>Update</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${participant}" var="part">
							<tr>
								<td>${part.sname}</td>
								<td>${part.age}</td>
								<td>${part.height}</td>
								<td>${part.weight}</td>
								<td>${part.gender}</td>
								<td>${part.belt}</td>
								<td>${part.dojoName}</td>
								<td>${part.senseiName}</td>
								<td>${part.mobile}</td>
								<td>${part.tournamentName}</td>
								<td><a
									href="/update-participant-filled?sname=${part.sname}&mobile=${part.mobile}">
										<input type="button" value="Update" class="hover-green" />
								</a></td>
								<td><a
									href="/delete-participant-filled?sname=${part.sname}&mobile=${part.mobile}"
									onclick="return confirm('Do you really want to delete the selected participant ?')">
										<input type="button" value="Delete" class="hover-red" />
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<br>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<div>
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
	</div>
</body>
</html>