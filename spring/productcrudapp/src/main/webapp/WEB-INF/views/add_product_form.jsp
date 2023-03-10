<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>


	<div>
		<div class="container mt-3">

			<div class="row">

				<div class="col-md-6 offset-md-3">
					<h1 class="text-center mb-3">Fill the product details</h1>
					<form action="handle-product" method="post">
						<div class="form-group">
							<label for="ProductName">Product Name</label> <input type="text"
								class="form-control" id="productName"
								aria-describedby="emailHelp" placeholder="Enter Product "
								name="name">

						</div>
						<div class="form-group">

							<label for="description">Product description</label>
							<textarea class="form-control" name="descriptionString"
								id="description" rows="5" placeholder="enter the product description"></textarea>
						</div>


						<div class="form-group">

							<label for="description">Product price</label> <input type="text"
								class="form-control" id="productPrice" aria-describedby="price"
								placeholder="Enter Product price" name="price">
						</div>

						<div class="container text-center">
							<a href="${pageContext.request.contextPath}/"
								class="btn btn-outline-danger">back</a>
							<button type="submit" class="btn btn-primary">Add</button>

						</div>
					</form>


				</div>

			</div>
		</div>

	</div>














</body>
</html>