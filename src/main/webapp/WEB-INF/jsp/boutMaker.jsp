<!DOCTYPE HTML>
<html lang="en">
<head>
<title>TMS - Bout</title>
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
	<div align="center">
		<h3 class="shadow-red-nou">You don't have sufficient privileges to access this functionality!</h3><br>
		<h3 class="shadow-red-nou">Please contact admin to get this access!</h3>
	</div>
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<div>
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
	</div>
</body>
</html>