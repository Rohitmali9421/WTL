<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST["name"]);
    $rollno = htmlspecialchars($_POST["rollno"]);
    $email = htmlspecialchars($_POST["email"]);
    $message = htmlspecialchars($_POST["message"]);
    $class = htmlspecialchars($_POST["class"]);

    // Basic validation (you should add more robust validation)
    if (empty($name) || empty($email) || empty($message)) {
        echo "Please fill in all fields.";
    } else {
        // Process the form data (e.g., send an email, save to database)
        echo "Form submitted successfully!<br>";
        echo "Name: " . $name . "<br>";
        echo "RollNo: " . $rollno . "<br>";
        echo "Email: " . $email . "<br>";
        echo "Message: " . $address . "<br>"; 
        echo "Class: " . $class . "<br>";      
        echo "Class: " . $class . "<br>";      
    }
} else {
    echo "Invalid request.";
}
?>