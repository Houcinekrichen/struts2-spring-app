<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html">
<html>
<head>
<meta charset=UTF-8>
<title>Produits</title>
</head>
<body>

	<div>
		<h3>Ajout d'un produit</h3>
		<br>
		<s:form action="save" method="POST">

			<s:textfield label="REF" name="produit.reference">
			</s:textfield>
			<s:textfield label="Désignation" name="produit.designation">
			</s:textfield>
			<s:textfield label="Prix" name="produit.prix">
			</s:textfield>
			<s:textfield label="Quantité" name="produit.quantite">
			</s:textfield>
			<s:checkbox label="Promo" name="produit.promo"></s:checkbox>
			<s:hidden name="editmode"></s:hidden>
			<s:submit value="Save"></s:submit>

		</s:form>
	</div>

	<div>
		<h3>List Produits</h3>
		<br>
		<table border=1>
			<tr>
				<th>REF</th>
				<th>Désignation</th>
				<th>Prix</th>
				<th>Quantité</th>
				<th>Promo</th>
			</tr>

			<s:iterator value="produits">
				<tr>
					<td><s:property value="reference" /></td>
					<td><s:property value="designation" /></td>
					<td><s:property value="prix" /></td>
					<td><s:property value="quantite" /></td>
					<td><s:property value="promo" /></td>

					<s:url namespace="/" action="delete" var="url1">
							<s:param name="ref">
								<s:property value="reference" />
							</s:param>
						</s:url>
						
					<s:url namespace="/" action="edit" var="url2">
							<s:param name="ref">
								<s:property value="reference" />
							</s:param>
						</s:url>
					<td><s:a href="%{url1}">delete</s:a></td>
					<td><s:a href="%{url2}">update</s:a></td>
				</tr>
			</s:iterator>

		</table>

	</div>
</body>
</html>