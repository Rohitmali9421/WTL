<?php

// 1. Indexed Array
$fruits = ["Apple", "Banana", "Mango", "Orange"];
echo "Indexed Array (Fruits):<br>";
foreach ($fruits as $index => $fruit) {
    echo "Fruit $index: $fruit<br>";
}
echo "<br>";

// 2. Associative Array
$student = [
    "name" => "Aman",
    "age" => 21,
    "course" => "BCA"
];

echo "Associative Array (Student Info):<br>";
foreach ($student as $key => $value) {
    echo ucfirst($key) . ": $value<br>";
}
echo "<br>";

// 3. Multidimensional Array
$marks = [
    ["Math", 90],
    ["Science", 85],
    ["English", 88]
];

echo "Multidimensional Array (Marks):<br>";
foreach ($marks as $subject) {
    echo "{$subject[0]}: {$subject[1]}<br>";
}
echo "<br>";

// 4. Array Functions
$numbers = [4, 2, 8, 1, 6];
echo "Original Numbers: " . implode(", ", $numbers) . "<br>";

sort($numbers);
echo "Sorted Numbers: " . implode(", ", $numbers) . "<br>";

echo "Total numbers: " . count($numbers) . "<br>";
echo "Maximum number: " . max($numbers) . "<br>";
echo "Minimum number: " . min($numbers) . "<br>";

$

?>
