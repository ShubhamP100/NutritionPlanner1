<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.grownited.entity.UserEntity" %>
<%
    UserEntity user = (UserEntity) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome - Register Info</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="text-primary">Welcome, <%= user.getFirstName() %>!</h2>

    <form action="saveuserss" method="post" class="mt-4 bg-white p-4 rounded shadow-sm">
        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="number" class="form-control" name="age" required>
        </div>

        <div class="mb-3">
            <label for="height" class="form-label">Height (cm)</label>
            <input type="text" class="form-control" name="height" required>
        </div>

        <div class="mb-3">
            <label for="weight" class="form-label">Weight (kg)</label>
            <input type="text" class="form-control" name="weight" required>
        </div>

        <div class="mb-3">
            <label for="healthGoal" class="form-label">Health Goal</label>
            <input type="text" class="form-control" name="healthGoal" required>
        </div>

        <div class="mb-3">
            <label for="medicalCondition" class="form-label">Medical Condition</label>
            <input type="text" class="form-control" name="medicalCondition">
        </div>

        <div class="mb-3">
            <label for="activityLevel" class="form-label">Activity Level</label>
            <select class="form-select" name="activityLevel" required>
                <option value="">-- Select --</option>
                <option value="Low">Low</option>
                <option value="Moderate">Moderate</option>
                <option value="High">High</option>
            </select>
        </div>

        <!-- Hidden field for foreign key userId -->
        <input type="hidden" name="userId" value="<%= user.getUserId() %>" />

        <button type="submit" class="btn btn-success">Save Info</button>
    </form>
</div>

</body>
</html>
