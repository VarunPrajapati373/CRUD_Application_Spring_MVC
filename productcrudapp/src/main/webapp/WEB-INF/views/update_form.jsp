<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>

</head>
<body style="background-image: url('https://img.freepik.com/free-vector/storehouse-workers-keeping-records-boxes_74855-11065.jpg?w=1380&t=st=1692533695~exp=1692534295~hmac=235fffd849d976bdf760bfe636ea3153d0213a0a5dd24b4c21f88b48ff44b2f0');
		background-attachment: fixed; background-repeat: no-repeat; background-size: 100%;">


<div class="container mt-3">
	<div class="row">
		<div class="col-md-6 offset-md-3">
			<h1 class="text-center mb-3">Change the Product Details</h1>
		<form action="${pageContext.request.contextPath }/handle-product" method="POST">
		
		<input type="hidden" value="${product.id} " name="id">
			<div class="form-group">
			
				<label for="name">Product Name</label> 
				<input type="text" class="form-control" id="name" aria-describedby="emailhelp" name="name" placeholder="Enter the product name here" value="${product.name} ">
			
			</div>
			<div class="form-group">
			
				<label for="description">Product Description</label>
				<textarea class="form-control" name="description" id="description" rows="5" placeholder="Enter the Product Description">${product.description}</textarea>
			
			</div>
			<div class="form-group">
			
				<label for="name">Product Price</label> 
				<input type="text" class="form-control" id="price" name="price" placeholder="Enter the product price" value="${product.price }">
			
			</div>
			<div class="container text-center">
			
				<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
				<button type="submit" class="btn btn-warning">UPDATE</button>
		
			</div>
		</form>
	</div>
  </div>
</div>

</body>
</html>