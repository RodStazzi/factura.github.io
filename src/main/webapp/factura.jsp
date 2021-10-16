<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>

	<%
	String nombre = (String) request.getAttribute("nombre");
	String empresa = (String) request.getAttribute("empresa");
	String direccion = (String) request.getAttribute("direccion");
	String rut = (String) request.getAttribute("rut");
	String ciudad = (String) request.getAttribute("ciudad");
	String pais = (String) request.getAttribute("pais");

	int precioTotalValvulas = (Integer) request.getAttribute("precioTotalValvulas");
	int precioTotalTurbo = (Integer) request.getAttribute("precioTotalTurbo");
	int precioTotalFreno = (Integer) request.getAttribute("precioTotalFreno");
	int precioTotalRefrigeracion = (Integer) request.getAttribute("precioTotalRefrigeracion");
	int precioTotalPlumillas = (Integer) request.getAttribute("precioTotalPlumillas");

	int cantidadValvula = (Integer) request.getAttribute("cantidadValvula");
	int cantidadTurbo = (Integer) request.getAttribute("cantidadTurbo");
	int cantidadFreno = (Integer) request.getAttribute("cantidadFreno");
	int cantidadRefrigeracion = (Integer) request.getAttribute("cantidadRefrigeracion");
	int cantidadPlumillas = (Integer) request.getAttribute("cantidadPlumillas");
	
	int valorTotal = (Integer)request.getAttribute("valorTotal");
	%>

	<div
		class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 padding">
		<div class="card">
			<div class="card-header p-4">
				<a class="pt-2 d-inline-block" href="index.html" data-abc="true">Envío
					de información</a>
				<div class="float-right">
					<h3 class="mb-0">Java</h3>
				</div>
			</div>
			<div class="card-body">
				<div class="row mb-4">
					<div class="col-sm-6">
						<h5 class="mb-3">From:</h5>
						<h3 class="text-dark mb-1"><%=nombre%></h3>
						<div><%=empresa%></div>
						<div><%=direccion%></div>
						<div><%=rut%></div>
						<div><%=ciudad%></div>
						<div><%=pais%></div>
					</div>
					<div class="col-sm-6 ">
						<h5 class="mb-3">To:</h5>
						<h3 class="text-dark mb-1">Akshay Singh</h3>
						<div>478, Nai Sadak</div>
						<div>Chandni chowk, New delhi, 110006</div>
						<div>Email: info@tikon.com</div>
						<div>Phone: +91 9895 398 009</div>
					</div>
				</div>
				<div style="padding-top: 50px;">
					<table class="table table-striped table-dark">
						<thead>
							<tr>
								<th scope="col">ITEM</th>
								<th scope="col">DESCRIPCION</th>
								<th scope="col">VALOR UNIDAD</th>
								<th scope="col">CANTIDAD</th>
								<th scope="col">VALOR TOTAL</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Valvulas Titanio</td>
								<td>Valvulas de carrera</td>
								<td>$120.000</td>
								<td><%= cantidadValvula %></td>
								<td><%= precioTotalValvulas %></td>
							</tr>
							<tr>
								<td>Turbo Full Carrera</td>
								<td>Turbo de competicion multimarca</td>
								<td>$1.700.000</td>
								<td><%= cantidadTurbo  %></td>
								<td><%= precioTotalTurbo %></td>
							</tr>
							<tr>
								<td>Kit de Freno Competicion</td>
								<td>Juego de discos, balatas, caliper de competicion</td>
								<td>$760.000</td>
								<td><%= cantidadFreno %></td>
								<td><%= precioTotalFreno %></td>
							</tr>
							<tr>
								<td>Sistema de refrigeracion</td>
								<td>Sistema enfriamiento motor Carrera</td>
								<td>$2.300.000</td>
								<td><%= cantidadRefrigeracion %></td>
								<td><%= precioTotalRefrigeracion %></td>
							</tr>
							<tr>
								<td>Plumillas Limpiaparabrisas standar</td>
								<td>plumillas para la lluvia</td>
								<td>$10.000</td>
								<td><%= cantidadPlumillas %></td>
								<td><%= precioTotalPlumillas %></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-4 col-sm-5"></div>
					<div class="col-lg-4 col-sm-5 ml-auto">
						<table class="table table-clear">
							<tbody>
								<tr>
									<td class="left"><strong class="text-dark">Subtotal</strong>
									</td>
									<td class="right">$28,809,00</td>
								</tr>
								<tr>
									<td class="left"><strong class="text-dark">Discount
											(20%)</strong></td>
									<td class="right">$5,761,00</td>
								</tr>
								<tr>
									<td class="left"><strong class="text-dark">VAT
											(10%)</strong></td>
									<td class="right">$2,304,00</td>
								</tr>
								<tr>
									<td class="left"><strong class="text-dark">Total</strong>
									</td>
									<td class="right"><strong class="text-dark">$<%= valorTotal %></strong>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="card-footer bg-white">
				<p class="mb-0">BBBootstrap.com, Sounth Block, New delhi, 110034</p>
			</div>
		</div>
	</div>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>