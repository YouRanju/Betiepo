<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">

<link rel="shortcut icon" href="../img/logo.png">
<title>Betiepo</title>

<link rel="stylesheet" href="../View/css/reset.css" />

<!-- top -->
<link rel="stylesheet" href="../View/css/form_top.css" />
<link rel="stylesheet" href="../View/css/user.css" />

<!-- index main -->
<link rel="stylesheet" href="../View/css/formain.css" />

<!-- bottom -->
<link rel="stylesheet" href="../View/css/forbottom.css" />

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String contentPage = request.getParameter("CONTENTPAGE");
	%>

	<table width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2"><jsp:include page="../View/top.jsp" flush="false" /></td>
		</tr>
		<tr>
			<td valign="top"><jsp:include page="<%=contentPage%>"
					flush="false" /></td>
		</tr>

		<tr>
			<td colspan="2"><jsp:include page="../View/bottom.jsp" flush="false" />
			</td>
		</tr>
	</table>
</body>
</html>