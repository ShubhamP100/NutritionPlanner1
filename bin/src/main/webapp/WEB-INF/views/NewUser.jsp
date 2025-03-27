<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <form action="saveuserss" method="POST"> 
            <label for="age">Age:</label>
            <input type="text" id="age" name="age" placeholder="Enter your age" required>

            <label for="height">Height:</label>
            <input type="text" id="height" name="height" placeholder="Enter your height" required>

            <label for="weight">Weight:</label>
            <input type="text" id="weight" name="weight" placeholder="Enter your weight" required>

            <label for="health_goal">Health Goal:</label>
            <input type="text" id="health_goal" name="healthGoal" placeholder="Enter your health goal" required>

            <label for="medical_conditions">Medical Conditions:</label>
            <input type="text" id="medical_conditions" name="medicalcondition" placeholder="Enter your medical condition" required>

            

            <label for="activity_level">Activity Level:</label>
            <input type="text" id="activity_level" name="activityLevel" placeholder="Enter your activity level" required>

            <button type="submit">Submit</button> 
        </form>
    </div>

</body>
</html>
    