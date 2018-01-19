<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Hello world</h1>
	<s:url action="produits" namespace="/" var="lien1"></s:url>
	<s:a href="%{lien1}">Produits</s:a>

</body>
</html>