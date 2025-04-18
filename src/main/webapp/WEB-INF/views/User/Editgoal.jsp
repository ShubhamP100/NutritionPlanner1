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
    <!-- Form starts here  -->
    <div class="container mt-5" style="margin-left: 270px;">
  <div class="card shadow rounded-4">
    <div class="card-header bg-success text-white">
      <h4 class="mb-0">🎯 Add Your Fitness Goal</h4>
    </div>
    
    <div class="card-body">
      <form action="update-goal" method="post">


        <div class="row mb-3">
          <div class="col-md-6">
            <label for="goalType" class="form-label">Goal Type</label>
            <input type="text" class="form-control" value="${goals.goalType}" name="goalType" id="goalType" required />
          </div>
          <div class="col-md-6">
            <label for="targetWeight" class="form-label">Target Weight (kg)</label>
            <input type="number" step="0.1" class="form-control" value="${goals.targetWeight }" name="targetWeight" id="targetWeight" required />
          </div>
        </div>

        <div class="row mb-3">
          <div class="col-md-6">
            <label for="targetMuscleMass" class="form-label">Target Muscle Mass (kg)</label>
            <input type="number" step="0.1" class="form-control" value="${goals.targetMuscleMass }" name="targetMuscleMass" id="targetMuscleMass" />
          </div>
          <div class="col-md-6">
          <label for="targetDate" class="form-label">Target Date</label>
          <input type="date" class="form-control" name="targetDate" value="${goals.targetDate}" id="targetDate" required />
        </div>
         
        </div>

        

        <div class="row mb-3">
          <div class="col-md-6">
            <label for="calorieIntakeGoal" class="form-label">Calorie Intake Goal (kcal)</label>
            <input type="number" step="0.1" class="form-control" value="${goals.calorieIntakeGoal }" name="calorieIntakeGoal" id="calorieIntakeGoal" required />
          </div>
          <div class="col-md-6">
            <label for="proteinIntakeGoal" class="form-label">Protein Intake Goal (g)</label>
            <input type="number" step="0.1" class="form-control" value="${goals.proteinIntakeGoal }" name="proteinIntakeGoal" id="proteinIntakeGoal" required />
          </div>
        </div>

        <div class="row mb-3">
          <div class="col-md-6">
            <label for="fatIntakeGoal" class="form-label">Fat Intake Goal (g)</label>
            <input type="number" step="0.1" class="form-control" value="${goals.fatIntakeGoal}" name="fatIntakeGoal" id="fatIntakeGoal" required />
          </div>
          <div class="col-md-6">
            <label for="carbIntakeGoal" class="form-label">Carb Intake Goal (g)</label>
            <input type="number" step="0.1" class="form-control"value="${goals.carbIntakeGoal }"  name="carbIntakeGoal" id="carbIntakeGoal" required />
          </div>
        </div>
       
         <input type="hidden" name="goalId" value="${goals.goalId}" />
         
         
        
        <div class="text-center">
          <button type="submit" class="btn btn-success px-4">Update-Goal</button>
        </div>

      </form>
      <!-- Form ends here  -->
    </div>
  </div>
</div>
    
   
   
   
    
    
  
  
  <!-- main over here -->
  </main>
  <jsp:include page="Footer.jsp"></jsp:include>
  
  
  <jsp:include page="Userjs.jsp"></jsp:include>
  <script src="asseste/js/main.js"> </script>
 
 


</body>
</html>