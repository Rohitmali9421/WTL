<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect and sanitize input data
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Sample Form</title>
</head>
<body>
    <h2>Sample Form</h2>

    <!-- Display the form -->
    <form method="POST" action="">
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="message">Message:</label><br>
        <textarea id="message" name="message" required></textarea><br><br>

        <input type="submit" value="Submit">
    </form>

    <?php
    // Display the submitted form data
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        echo "<h3>Your Submitted Data:</h3>";
        echo "<strong>Name:</strong> " . $name . "<br>";
        echo "<strong>Email:</strong> " . $email . "<br>";
        echo "<strong>Message:</strong> " . $message . "<br>";
    }
    ?>
</body>
</html>
