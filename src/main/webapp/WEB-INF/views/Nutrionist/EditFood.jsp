<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<!-- 


<form action="" method="post"> 
      
      <div class="form-group">
         <label for="firstname">FoodName</label>
         <input type="text" placeholder="Enter the foodname" id="firstName" name="">
      </div>

      <div class="form-group">
         <label for="foodcategory">FoodCategory</label>
          <select id="role" class = "text-gray-500 border-gray-400 border-1 text-lg rounded-md h-10 w-full" name="role" >
                <option value="">Select foodcategory</option>
                <option value=""></option>
                
                <option value="">Nutritionist</option>
                
            </select>
      </div>

    

      <div class="form-group">
         <label for="image">Enter the image url</label>
         <input type="password" placeholder="Enter your password" id="password" name="password">
      </div>

     <div class="form-group">
       <select id="role" class = "text-gray-500 border-gray-400 border-1 text-lg rounded-md h-10 w-full" name="role" >
                <option value="">Select Role</option>
                <option value="user">USER</option>
                
                <option value="nutrionist">Nutritionist</option>
                
            </select>
      </div>
       
     
      <button  type="submit" class="btn">Sign Up</button>
      
      
   </form> 
 
  


</form>

 -->

	<div class="container mt-5">
		<h2 class="mb-4">Edit Food Item</h2>
		<form action="updatefood" method="post" enctype="multipart/form-data">
		<input type="hidden" name="foodid" value="${op.foodid}"/>
			<div class="mb-3">
				<label for="foodname" class="form-label">Food Name</label> <input
					type="text" class="form-control" id="foodname" name="foodname" value="${op.foodname}"
					required>
			</div>
			<div class="mb-3">
				<label for="calories" class="form-label">Calories</label> <input
					type="number" step="0.01" class="form-control" id="calories" 
					name="calories" value="${op.calories}" required>
			</div>
			<div class="mb-3">
				<label for="protein" class="form-label">Protein (g)</label> <input
					type="number" step="0.01" class="form-control" id="protein"
					name="protein"  value="${op.protein}" required>
			</div>
			<div class="mb-3">
				<label for="fats" class="form-label">Fats (g)</label> <input
					type="number" step="0.01" class="form-control" id="fats"
					name="fats" value="${op.fats}" required>
			</div>
			<div class="mb-3">
				<label for="foodcategory" class="form-label">Food Category</label> <input
					type="text" class="form-control" id="foodcategory"
					name="foodcategory" value="${op.foodcategory}">
			</div>
			<div class="mb-3">
				<label for="dietype" class="form-label">Diet Type</label> <input
					type="text" class="form-control" id="dietype" name="dietype" value="${op.dietype}" >
			</div>
			<div class="mb-3">
				<label for="foodPic" class="form-label">Image</label> <input
					type="file" class="form-control" id="foodPic" name="foodImage" value="${op.foodPicPath}">
			</div>
			<button type="submit" class="btn btn-primary">Add Food</button>
		</form>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>