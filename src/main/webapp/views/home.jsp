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
	href="<%=request.getContextPath()%>/resources/template2/assets/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/resources/template2/assets/css/animate.min.css"
	rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/resources/template2/assets/css/demo.css"
	rel="stylesheet">

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/resources/template2/assets/css/paper-dashboard.css"
	rel="stylesheet">

<link
	href="<%=request.getContextPath()%>/resources/template2/assets/css/themify-icons.css"
	rel="stylesheet">

<!--  Fonts and icons     -->

<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="assets/css/themify-icons.css" rel="stylesheet">


</head>

<body>

	<div class="wrapper">



		<%@ include file="/views/menu_left/leftMenu.jsp"%>


		<div class="main-panel">
		
		<%@ include file="/views/menu_top/topMenu.jsp"%>


			<div class="content">
				<div class="container-fluid">
					<div class="col-lg-12">



						<div>


							<s:form action="save" method="POST">

								<h3>Ajout produit</h3>

								<label class="control-label">Reference : </label>
								<s:textfield class="form-control border-input"
									placeholder="Reference" name="produit.reference">
								</s:textfield>

								<label class="control-label">Désignation :</label>

								<%-- <s:fielderror fieldName="produit.reference" /> --%>

								<s:textfield class="form-control border-input"
									required="required" placeholder="Désignation"
									name="produit.designation">
								</s:textfield>
								<label>Prix</label>

								<s:textfield class="form-control border-input"
									placeholder="prix" name="produit.prix" type="number">
								</s:textfield>

								<label>Quantité</label>
								<s:textfield class="form-control border-input"
									placeholder="quantite" name="produit.quantite" type="number">
								</s:textfield>
								<br>




								<div class="checkbox">
									<s:checkbox type="checkbox" name="produit.promo"
										class="form-check-input" id="exampleCheck1">
									</s:checkbox>
									<label class="form-check-label" for="exampleCheck1">Promo</label>
								</div>

								<s:hidden name="editmode"></s:hidden>
								<br>

								<s:submit value="Save" class="btn btn-info btn-fill btn-wd"></s:submit>





							</s:form>
						</div>

						<div>
							<h3>List des produits</h3>
							<br>
							<div class="content table-responsive table-full-width">
								<table class="table table-striped">
									<tr>
										<th>REF</th>
										<th>Désignation</th>
										<th>Prix</th>
										<th>Quantité</th>
										<th>Promo</th>
										<th>Delete</th>
										<th>update</th>
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
											<td><s:a href="%{url1}" class="ti-close">&nbsp; delete</s:a></td>
											<td><s:a href="%{url2}" class="ti-reload">&nbsp; update</s:a></td>
										</tr>
									</s:iterator>

								</table>
							</div>



						</div>
					</div>
				</div>


			</div>


			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>

							<li><a href="http://www.creative-tim.com"> Creative Tim
							</a></li>
							<li><a href="http://blog.creative-tim.com"> Blog </a></li>
							<li><a href="http://www.creative-tim.com/license">
									Licenses </a></li>
						</ul>
					</nav>
					<div class="copyright pull-right">
						&copy;
						<script>
							document.write(new Date().getFullYear())
						</script>
						, made with <i class="fa fa-heart heart"></i> by <b> <a
							href="http://www.creative-tim.com">Houcine krichen</a></b>
					</div>
				</div>
			</footer>

		</div>
	</div>


</body>





<!--   Core JS Files   -->
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/jquery-1.10.2.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/bootstrap-checkbox-radio.js"></script>

<!--  Charts Plugin -->
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/paper-dashboard.js"></script>

<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
<script
	src="<%=request.getContextPath()%>/resources/template2/assets/js/demo.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						demo.initChartist();

						$
								.notify(
										{
											icon : 'ti-gift',
											message : "Welcome to <b>Paper Dashboard</b> - a beautiful Bootstrap freebie for your next project."

										}, {
											type : 'success',
											timer : 4000
										});

					});
</script>


</html>