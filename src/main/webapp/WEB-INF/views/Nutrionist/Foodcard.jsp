<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 


<div class="container d-flex justify-content-center col-span-4 h-[350px]">
  <div class="nutrition-card position-relative w-full" id = "foodcard">
    <div class = "bg-cover bg-no-repeat h-[43%] w-full" style = "background-image:url('${food.foodPicPath}');">
    
   <%--  <img src="${food.foodPicPath}" class="img-fluid w-100"  alt="Broccoli">--%>
    <div class="badge-top">${food.dietype}</div> <!-- dietype -->
      </div>
      
      <a href="editfood?foodid=${food.foodid}" 
       class="btn btn-sm btn-primary position-absolute" 
       style="top: 10px; right: 10px; z-index: 2;">
      Edit
    </a>
       
    <div class="content"> 
      
      <h4>${food.foodname}</h4> <!-- foodname -->
      <small>Category: ${food.foodcategory}</small> <!-- foodcategory -->

      <div class="nutri-info">
        <strong>Calories:</strong> ${food.calories} kcal<br>
        <strong>Fats:</strong> ${food.fats}g<br>
        <strong>Protein:</strong> ${food.protein}g
      </div>
      
  <c:if test="${param.salt eq 'no'}"> 
      <div class="tagline-row" style = "display:flex; justify-content:center; margin-top:10px;">
        
        <label class="pretty-checkbox">
         <input type="checkbox" name="foodid" value="${food.foodid}"/>
             <span class="checkmark"></span> 
               Add to Breakfast 
              </label>
      </div>
</c:if> 
    </div>
  </div>
</div>













