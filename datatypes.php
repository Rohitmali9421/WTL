<?php

// 1. Integer
$integer = 42;
echo "Integer: " . $integer . "<br>";

// 2. Float (or Double)
$float = 3.14;
echo "Float: " . $float . "<br>";

// 3. String
$string = "Hello, World!";
echo "String: " . $string . "<br>";

// 4. Boolean
$booleanTrue = true;
$booleanFalse = false;
echo "Boolean True: " . $booleanTrue . "<br>";
echo "Boolean False: " . $booleanFalse . "<br>";

// 5. Array
$array = array(1, 2, 3, "apple", "banana");
echo "Array: ";
print_r($array);
echo "<br>";

// 6. NULL
$nullVar = null;
echo "NULL: " . var_export($nullVar, true) . "<br>";

// 7. Resource
$fileResource = fopen("sample.txt", "w");
echo "Resource: " . $fileResource . "<br>";
fclose($fileResource);

?>
