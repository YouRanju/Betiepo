<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="shortcut icon" href="../img/logo.png">

<title>Betiepo</title>

<link rel="stylesheet" href="../css/reset.css" />
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String contentPage = request.getParameter("CONTENTPAGE");
	%>

	<table cellpadding="2" cellspacing="0">
		<tr>
			<td colspan="2"><jsp:include page="top.jsp" flush="false" /></td>
		</tr>
		<tr>
			<td valign="top"><jsp:include page="<%=contentPage%>"
					flush="false" /></td>
		</tr>

		<tr>
			<td colspan="2"><jsp:include page="bottom.jsp" flush="false" />
			</td>
		</tr>
	</table>
</body>
</html>