<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
	<%@page import="com.renish.bean.User"%>
	<%@page import="com.renish.dao.UserDao"%>
	<%@page import="com.renish.web.SaveLogistic"%>
	<%@page import="com.renish.web.deletLogistic"%>
	<%@page import="com.renish.web.updateLogistic"%>
	<%@page import="com.renish.dao.UserDao,com.renish.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="m"%>

	<h1 class="fs-1 text-center fw-bold">LOGISTIC MANAGEMENT</h1>

	<form class="container  col-lg-10" autocomplete="off"
		action="SaveLogistic" method="post">
		<div>
			<input type="hidden" name="id" />


			<div class="row mx-auto  d-flex justify-content-center pt-3">
				<!-- <label class="col-sm-2 col-form-label fs-5"> -->
				<label class="col-sm-2 col-form-label fs-5 ">ID:</label>


				<div class="col-sm-4">
					<input type="number" class="form-control mt-2 shadow bg-white"
						id="ID" name="itemNo" placeholder="enter ID" name="itemNo"
						value="<m:out value='${messages.itemNo}'/>">
				</div>
				<span id="error" class="text-danger" style="margin-left: 867px"></span>
			</div>


			<div class="row mx-auto  d-flex justify-content-center pt-3">
				<!-- <label class="  "> -->
				<label class="col-sm-2 col-form-label fs-5">ITEM NAME:</label>
				<div class="col-sm-4">
					<input type="text" id="itemName"
						class="form-control mt-2 shadow bg-white" name="itemName"
						placeholder="enter item name"
						value="<m:out value='${messages.itemName}'/>">
					<!-- </label> -->
				</div>
				<span id="iError" class="text-danger" style="margin-left: 867px"></span>
			</div>


			<div class="row mx-auto  d-flex justify-content-center pt-3">
				<!-- <label class="  "> -->
				<label class="col-sm-2 col-form-label fs-5">DATE:</label>
				<div class="col-sm-4">
					<input type="date" id="date"
						class="form-control mt-2 shadow bg-white" name="date" id="date"
						value="<m:out value='${messages.date}'/>">
					<!-- </label> -->
				</div>
				<span id="dError" class="text-danger" style="margin-left: 867px"></span>
			</div>



			<div class="row mx-auto d-flex justify-content-center pt-3">
				<label class="col-sm-2 col-form-label fs-5" for="select" id="a3">CATEGORY:</label>
				<div class="col-sm-4">
					<select class="form-control mt-2 shadow bg-white" type="option"
						name="category" id="category"
						onblur="validation('category','sError','CATEGORY:')"
						value="<m:out value='${messages.category}'/>">
						<option selected value="">select</option>
						<option value="electronis">electronics</option>
						<option value="paper">paper</option>
						<option value="cheque">cheque</option>
					</select>
				</div>
				<span id="sError" class="text-danger" style="margin-left: 867px;"></span>
			</div>
		</div>


		<div class="row " style="margin-left: 20px">
			<div
				class="col-sm-10 col-xl-5 col-lg-6 col-md-8 mx-auto text-center form p-4">
				<input type="submit" class="btn btn-outline-secondary"
					value="submit"> <a href="index.jsp"
					class="btn btn-outline-secondary">Back</a>

			</div>
		</div>
	</form>
</body>
</html>