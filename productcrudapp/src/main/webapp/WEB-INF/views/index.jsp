<html>
<head>

<%@include file="./base.jsp" %>
  <%@page isELIgnored ="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value="/resources/css/bg.css" />">
</head>
<body style="background-image: url('https://img.freepik.com/free-vector/storehouse-workers-keeping-records-boxes_74855-11065.jpg?w=1380&t=st=1692533695~exp=1692534295~hmac=235fffd849d976bdf760bfe636ea3153d0213a0a5dd24b4c21f88b48ff44b2f0');
		background-attachment: fixed; background-repeat: no-repeat; background-size: 100%;">

<div class="container mt-3">

	<div class="row">
	
		<div class="col-md-12">
		
		<h1 class="text-center mb-3">Welcome to Product App</h1>
		
			<table class="table">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">S.No.</th>
			      <th scope="col">Product Name</th>
			      <th scope="col">Description</th>
			      <th scope="col">Price</th>
			      <th scope="col">Action</th>
			    </tr>
			  </thead>
			  <tbody>
			  
			  <c:forEach items="${product }" var="p">
			  
			    <tr>
			      <th scope="row">${p.id}</th>
			      <td>${p.name }</td>
			      <td>${p.description }</td>
			      <td class="font-weight-bold">&#x20B9; ${p.price }</td>
			      <td>
			      	<a href="delete/${p.id} "><i class="fa-solid fa-trash text-danger" style="font-size: 20px;"></i></a>
			      	<a href="update/${p.id} "><i class="fa-solid fa-pen" style="font-size: 20px;"></i></a>
			      </td>
			    </tr>
			    
			  </c:forEach>
			  </tbody>
			</table>
		
			<div class="container text-center">
				
				<a href="add-product" class="btn btn-outline-success">Add Product</a>
			
			</div>
		
		</div>
	
	</div>

</div>

</body>
</html>
