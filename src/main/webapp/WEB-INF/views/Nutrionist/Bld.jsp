<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Nutrition Planner</title>

<jsp:include page="Nutricss.jsp"></jsp:include>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>

    #card-container {
    
    display:flex !important;
    flex-direction:column !important;
     gap:30px !important;
    }
        .meal-card {
            display: flex;
            flex-direction: row;
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 100%;
            height:260px;
           
        }
        .meal-image {
            width: 20%;
            height: 100%;
            background-size: cover;
            background-position: center;
        }
        .meal-content {
            display:flex;
            flex-direction:column;
            padding: 15px;
            flex-grow: 1;
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
        
        
        .show {
          background-color:green;
          color:white;
          border:none;
          border-radius:4px;
        }
    </style>

</head>
<body>

<jsp:include page="NutriHeader.jsp"></jsp:include>
<jsp:include page="NutriSidebar.jsp"></jsp:include>

<main id="main" class="main">


   
<div class="container mt-5" >
    <div class="card-wrapper" id = "card-container">

        <c:if test = "${added eq 'no'}">
        <!-- Breakfast -->
        <div class="meal-card" style = "width:100%;">
            <div class="meal-image" style="background-image: url('assets/img/nutionist.png');"></div>
            <div class="meal-content">
                <div class="meal-title">Breakfast</div>
                <div class="meal-quote">"Start your day with energy and positivity!"</div>
                 
            <a href="addmeal?userId=${userid}"><button id="btn">Add breakfast</button></a>
            </div>
            
            
        </div> 
        </c:if>
        
       
        
        <c:if test = "${added eq 'yes'}">
        
        
        <div class="meal-card" style = "width:100%; background-color:green;">
            <div class="meal-image" style="background-image: url('assets/img/nutionist.png');"></div>
            <div class="meal-content">
                <div class="meal-title">Breakfast</div>
                <div class="meal-quote">"Start your day with energy and positivity!"</div>
                 
            <div class = "show">Breakfast added</div>
            </div>
            
            
        </div> 
    
        </c:if>
        
         <c:if test = "${finish eq 'no'}">
        <!-- Lunch -->
        <div class="meal-card" style = "width:100%;">
            <div class="meal-image" style="background-image: url('assets/img/lunch.jpg');"></div>
            <div class="meal-content">
                <div class="meal-title">Lunch</div>
                <div class="meal-quote">"Fuel up with something wholesome and filling."</div>
               <a href="addmeal?mealtype=lunch&userId=${userid}"><button id="btn">Add Lunch</button></a>
            </div>
           
        </div>
        </c:if>
        
        <c:if test = "${finish eq 'yes'}">
        <!-- Lunch -->
        <div class="meal-card" style = "width:100%; background-color:#00FF00">
            <div class="meal-image" style="background-image: url('assets/img/lunch.jpg');"></div>
            <div class="meal-content">
                <div class="meal-title">Lunch</div>
                <div class="meal-quote">"Fuel up with something wholesome and filling."</div>
              <div class="show">Lunch added</div>
            </div>
           
        </div>
        </c:if>
        
         <c:if test = "${done eq 'no'}">
        
        <!-- Dinner -->
        
        
        
        <div class="meal-card" style = "width:100%; ">
            <div class="meal-image" style="background-image: url('assets/img/dinner.jpg');"></div>
            <div class="meal-content">
                <div class="meal-title">Dinner</div>
                <div class="meal-quote">"End the day with a light and healthy meal."</div>
               <a href="addmeal?mealtype=dinner&userId=${userid}"><button id="btn">Add Dinner</button></a> 
            </div>
        </div>
        
        <</c:if>
        
        <c:if test = "${done eq 'yes'}">
        
        <!-- Dinner -->
        
        
        
        <div class="meal-card" style = "width:100%; background-color: #4d8c57 ">
            <div class="meal-image" style="background-image: url('assets/img/dinner.jpg');"></div>
            <div class="meal-content">
                <div class="meal-title">Dinner</div>
                <div class="meal-quote">"End the day with a light and healthy meal."</div>
                <div class="show">Dinner added</div>
            </div>
        </div>
        
        </c:if>

    </div>
    
<a href="savemeal?userId=${userid}"><button class="bg-black-200" style = "margin-left:500px; border:solid black 2px; border-radius:5px;">Save meal</button></a>
</div>

  
   

</main>







<jsp:include page="NutriFooter.jsp"></jsp:include>
<jsp:include page="Nutrijs.jsp"></jsp:include>
<script src="assests/js/main.js"></script>
</body>
</html>