<!DOCTYPE html>
<html>
<body>

<?php
$target = "uploads/"; // folder inside your project directory

if (isset($_FILES['file']) && $_FILES['file']['error'] == 0) {
    $destination = $target . basename($_FILES['file']['name']);
    if (move_uploaded_file($_FILES['file']['tmp_name'], $destination)) {
        echo "File uploaded successfully!";
    } else {
        echo "Sorry, file not uploaded. Please try again!";
    }
} else {
    echo "No file uploaded or there was an error!";
}
?>

</body>
</html>
