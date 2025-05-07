<?php

echo "<h2>Conditional Statements:</h2>";

$age = 25;

// if statement
if ($age >= 18) {
    echo "You are an adult.<br>";
}

// if-else statement
if ($age < 13) {
    echo "You are a child.<br>";
} else {
    echo "You are not a child.<br>";
}

// if-elseif-else statement
$grade = 85;

if ($grade >= 90) {
    echo "Your grade is A.<br>";
} elseif ($grade >= 80) {
    echo "Your grade is B.<br>";
} elseif ($grade >= 70) {
    echo "Your grade is C.<br>";
} else {
    echo "Your grade is below C.<br>";
}

// switch statement
$day = "Wednesday";

switch ($day) {
    case "Monday":
        echo "It's the start of the week.<br>";
        break;
    case "Tuesday":
    case "Wednesday":
        echo "It's the middle of the week.<br>";
        break;
    case "Thursday":
        echo "Almost there!<br>";
        break;
    case "Friday":
        echo "TGIF! It's Friday.<br>";
        break;
    default:
        echo "It's the weekend.<br>";
}

echo "<br><h2>Looping Statements:</h2>";

// for loop
echo "<b>For Loop:</b><br>";
for ($i = 0; $i < 5; $i++) {
    echo "Iteration number: " . ($i + 1) . "<br>";
}

echo "<br>";

// while loop
echo "<b>While Loop:</b><br>";
$count = 0;
while ($count < 3) {
    echo "Count is: " . $count . "<br>";
    $count++;
}

echo "<br>";

// do-while loop
echo "<b>Do-While Loop:</b><br>";
$num = 0;
do {
    echo "Number is: " . $num . "<br>";
    $num++;
} while ($num < 2);

echo "<br>";

// foreach loop (for arrays)
echo "<b>Foreach Loop (for arrays):</b><br>";
$colors = array("red", "green", "blue");
foreach ($colors as $color) {
    echo "Color: " . $color . "<br>";
}

echo "<br>";

// foreach loop (for associative arrays)
echo "<b>Foreach Loop (for associative arrays):</b><br>";
$person = array("name" => "John Doe", "age" => 30, "city" => "Kolhapur");
foreach ($person as $key => $value) {
    echo $key . ": " . $value . "<br>";
}

?>