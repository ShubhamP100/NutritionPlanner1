<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nutritionist Registration</title>
    
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome CDN (for icons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            max-width: 800px;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="form-container mx-auto">
        <h3 class="text-center mb-4"><i class="fas fa-user-md"></i> Nutritionist Registration</h3>
        <form action="registerNutritionist" method="POST">
            <div class="row">
                <!-- Full Name -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-user"></i> Full Name</label>
                    <input type="text" name="fullName" class="form-control" placeholder="Enter full name" required>
                </div>
                
                <!-- Email -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-envelope"></i> Email</label>
                    <input type="email" name="email" class="form-control" placeholder="Enter email" required>
                </div>
            </div>

            <div class="row mt-3">
                <!-- Contact Number -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-phone"></i> Contact Number</label>
                    <input type="tel" name="contactNumber" class="form-control" placeholder="Enter contact number" required>
                </div>

                <!-- Gender -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-venus-mars"></i> Gender</label>
                    <select name="gender" class="form-select">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                       
                    </select>
                </div>
            </div>

            <div class="row mt-3">
                <!-- Date of Birth -->
                

                <!-- Qualifications -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-graduation-cap"></i> Qualifications</label>
                    <input type="text" name="qualifications" class="form-control" placeholder="e.g. B.Sc in Nutrition" required>
                </div>
            </div>

            <div class="row mt-3">
                <!-- Specialization -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-heartbeat"></i> Specialization</label>
                    <input type="text" name="specialization" class="form-control" placeholder="e.g. Dietitian, Clinical Nutrition" required>
                </div>

                <!-- Experience -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-briefcase"></i> Years of Experience</label>
                    <input type="number" name="experience" class="form-control" placeholder="Enter years" min="0" required>
                </div>
            </div>

            <div class="row mt-3">
                <!-- Clinic Name -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-hospital"></i> Clinic / Hospital Name</label>
                    <input type="text" name="clinicName" class="form-control" placeholder="Enter clinic name">
                </div> 

                <!-- Consultation Fee -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-dollar-sign"></i> Consultation Fee</label>
                    <input type="text" name="fee" class="form-control" placeholder="Enter fee (if applicable)">
                </div>
            </div>

            <div class="row mt-3">
                <!-- City -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-city"></i> City</label>
                    <input type="text" name="city" class="form-control" required>
                </div>
         
                <!-- State 
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-map-marker-alt"></i> State</label>
                    <input type="text" name="state" class="form-control">
                </div>
                -->
            </div>

            <div class="row mt-3">
                <!-- Country 
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-globe"></i> Country</label>
                    <input type="text" name="country" class="form-control" required>
                </div>
                -->

                <!-- Username -->
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-user"></i> Username</label>
                    <input type="text" name="username" class="form-control" required>
                </div>
            </div>

            <div class="row mt-3">
                <!-- Password 
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-lock"></i> Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div> 

               
                <div class="col-md-6">
                    <label class="form-label"><i class="fas fa-lock"></i> Confirm Password</label>
                    <input type="password" name="confirmPassword" class="form-control" required>
                </div>
                -->
            </div>

            <!-- Submit & Reset Buttons -->
            <div class="mt-4 text-center">
                <button type="submit" class="btn btn-success">
                    <i class="fas fa-user-plus"></i> Register
                </button>
                
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
