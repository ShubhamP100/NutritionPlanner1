<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    
<!DOCTYPE html>
<html>
<head>
<!-- USer hoem page -->

<meta charset="UTF-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>


<title>Nutrition Planner</title>

<jsp:include page="Usercss.jsp"></jsp:include>

</head>
<body>
 <jsp:include page ="Header.jsp"></jsp:include>
  <jsp:include page ="Sidebar.jsp"></jsp:include>
   
   <main id="main" class="main">
   <!-- 
   TargetWeight
   TargetMuscleMass
   HeightGoal
    -->
   
   <div class="container mt-4" style="margin-left: 270px;">
  <h4 class="mb-4 text-success">🎯 Your Fitness Goals</h4>
  <div class="row">
    <c:forEach var="goal" items="${mygoal}">
     
      <c:set var="r" value="${goal}" scope="request"/>
      
      <jsp:include page="../Card.jsp"/> <!-- ../ to import the card file  we use  -->
      
    </c:forEach>
  </div>
</div>
   
    
    
  
  
  <!-- main over here -->
  </main>
  <jsp:include page="Footer.jsp"></jsp:include>
  
  
  <jsp:include page="Userjs.jsp"></jsp:include>
  <script src="asseste/js/main.js"> </script>
</body>
</html>