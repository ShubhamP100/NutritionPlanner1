<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="col-md-6 col-lg-4 mb-4">
        <div class="card shadow border-0 rounded-4">
          <div class="card-body">
            <h5 class="card-title text-primary">${r.goalType}</h5> 
            <p class="mb-1"><strong>Target Weight:</strong> ${r.targetWeight} kg</p>
            <p class="mb-1"><strong>Muscle Mass:</strong> ${r.targetMuscleMass} kg</p>
            <p class="mb-1"><strong>Calorie Goal:</strong> ${r.calorieIntakeGoal} kcal</p>
            <p class="mb-1"><strong>Protein:</strong> ${r.proteinIntakeGoal} g | <strong>Fat:</strong> ${r.fatIntakeGoal} g | <strong>Carbs:</strong> ${r.carbIntakeGoal} g</p>
            <p class="mb-1"><strong>Target Date:</strong> ${r.targetDate}</p>
            <div class="d-flex justify-content-between mt-3">
              <a href="editgoal?goalId=${r.goalId}" class="btn btn-sm btn-outline-success">Edit</a>
              <a href="deletegoal?goalId=${r.goalId}" class="btn btn-sm btn-outline-danger">Delete</a>
            </div>
          </div>
        </div>
      </div>


</body>
</html>