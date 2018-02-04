<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE html">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="<%=request.getContextPath()%>/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



<title>Produits</title>
<style type="text/css">
</style>

</head>
<body>


	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">

			<%@ include file="/views/menu_top/topMenu.jsp"%>



		</nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-12">
								<br/>
								<div class="panel panel-primary">
									<div class="panel-heading">
										Ajout d'un produit
									</div>
									<!-- /.panel-heading -->
									<div class="panel-body">

										<div>
											
											<br>
											<s:form action="save" method="POST">
												
													<label>Reference :</label>
													<s:textfield class="form-control" name="produit.reference">
													</s:textfield>
													<label>Désignation</label>

													<%-- <s:fielderror fieldName="produit.reference" /> --%>

													<s:textfield class="form-control"
														name="produit.designation">
													</s:textfield>
													<label>Prix</label>

													<s:textfield class="form-control" name="produit.prix">
													</s:textfield>

													<label>Quantité</label>
													<s:textfield class="form-control" name="produit.quantite">
													</s:textfield>
													<br> <label>Promo</label>
													<s:checkbox class="checkbox" name="produit.promo"></s:checkbox>
													<s:hidden name="editmode"></s:hidden>
													<br>
													<s:submit value="Save" class="btn btn-success"></s:submit>

												

											</s:form>
										</div>

										<div>
											<h3>List Produits</h3>
											<br>
											<table border=1 class="table table-stripped">
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


									</div>
									</div>
									<!-- /.col-lg-12 -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.container-fluid -->
						</div>
						<!-- /#page-wrapper -->

					</div>

					
</body>

<!-- jQuery -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script
	src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>

</html>