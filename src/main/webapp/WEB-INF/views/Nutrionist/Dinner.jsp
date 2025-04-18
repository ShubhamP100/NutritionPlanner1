

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<jsp:include page="Nutricss.jsp"></jsp:include>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
 
<style>


main {
  background: #4ee850;
  
  height: 650px; /* Adjust based on actual header + footer height */
  /* Full viewport height */
 overflow-y: scroll; /* Vertical scroll only */
   /* Hide horizontal scroll */
      
    }
    
    #main {
     background-color:transparent;
    
    }

    #card-container {
    background-color:white;
    display:flex !important;
    flex-direction:column !important;
     gap:30px !important;
    }
        .meal-card {
            display: flex;
            flex-direction: row;
            background-color: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 100%;
            height:260px;
           
        }
        
        #foodcard {
         overflow:hidden;
         background-color : white;
         border:none;
         border-radius:12px;
        
        }
        .meal-image {
            width: 20%;
            height: 100%;
            background-size: cover;
            background-position: center;
        }
        
         .badge-top {
      position: absolute;
      top: 12px;
      right: 12px;
      background: #28a745;
      color: white;
      padding: 5px 12px;
      border-radius: 20px;
      font-size: 0.8rem;
      box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }
    
        .meal-content {
            display:flex;
            flex-direction:column;
            padding: 15px;
            flex-grow: 1;
        }
        .pretty-checkbox {
  display: inline-flex;
  align-items: center;
  font-size: 15px;
  font-weight: 500;
  padding: 10px 16px;
  background-color: #f0f8ff;
  border: 2px solid #4caf50;
  border-radius: 25px;
  color: #4caf50;
  cursor: pointer;
  transition: all 0.3s ease;
  user-select: none;
  gap: 10px;
}

.pretty-checkbox:hover {
  background-color: #e6ffee;
}

.pretty-checkbox input {
  display: none;
}

.pretty-checkbox .checkmark {
  width: 18px;
  height: 18px;
  border: 2px solid #4caf50;
  border-radius: 4px;
  position: relative;
  display: inline-block;
  background-color: white;
}

.pretty-checkbox input:checked + .checkmark {
  background-color: #4caf50;
}

.pretty-checkbox .checkmark::after {
  content: "";
  position: absolute;
  display: none;
  left: 5px;
  top: 1px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.pretty-checkbox input:checked + .checkmark::after {
  display: block;
}
        .meal-title {
            font-weight: bold;
            font-size: 3.5rem;
            margin-bottom: 5px;
        }
        #btn{
          border:solid blue 2px;
          border-radius:5px;
          background-color:transparent;
          align-self:end;
          justify-self:end;
          margin-top:40px;
          margin-right:20px;
          height:30px;
          width:120px;
        }
        .content {
         padding-left:10px;
         margin-bottom:10px;
        }
        .meal-quote {
            font-size:2rem;
            font-style: italic;
            color: #555;
        }
        .card-wrapper {
            display: flex;
            justify-content: center;
            gap: 30px;
            margin-top: 50px;
            flex-wrap: nowrap; /* horizontal only */
        }
        
       
    </style>

</head>
<body>

<jsp:include page="NutriHeader.jsp"></jsp:include>
<jsp:include page="NutriSidebar.jsp"></jsp:include>

<main class="main p-2" >
<div class = "h-[20] ml-[700px] mt-12">


<form action="addmeal?userId=${id}" method="get" class="p-4">
  <div class="row mb-3 flex items-center">
    <div class="col-md-4">
     
      <select class="form-select" id="category" name="foodcategory" required>
        <option value="" selected disabled>Select Category</option>
        <c:forEach items = "${categories}" var = "category">
         <option value = "${category}">${category}</option>
        </c:forEach>
      </select>
    </div>

  <input type="hidden" name="userId" value="${id}" />
  

    <div class="col-md-4">
     
      <select class="form-select" id="dietype" name="dietype" required>
        <option value="" selected disabled>Select Diet Type</option>
       <c:forEach items = "${diets}" var = "diet">
        <option value = "${diet}">${diet}</option>
       </c:forEach>
      </select>
    </div>
    
     <div class=" col-md-2">
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  </div>

 
</form>

</div>




<form action = "savedinner?userId=${id}" method = "POST">
<div id = "main" class = "main grid grid-cols-12 rounded-lg overflow-hidden gap-4">

<c:forEach items = "${foods}" var = "oneitem">

<c:set value = "${oneitem}" var = "food" scope = "request"/>
<jsp:include page = "Foodcard.jsp">
<jsp:param name="salt" value="${foruser}"/>
</jsp:include>
</c:forEach>

</div>

<button class="bg-black-200" style = "margin-left:800px; border:solid black 2px; border-radius:5px;">Save breakfast</button>
</form>

</main>

<jsp:include page="NutriFooter.jsp"></jsp:include>
<jsp:include page="Nutrijs.jsp"></jsp:include>

<script src="assests/js/main.js"></script>
</body>
</html>

