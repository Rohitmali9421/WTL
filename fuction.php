<?php

function calculateSum($num1, $num2) {
    $sum = $num1 + $num2;
    return $sum;
}

$sumResult = calculateSum(5, 3);
echo "The result of adding 5 and 3: {$sumResult}<br>";

function getProduct($x, $y = 2) {
    $product = $x * $y;
    return $product;
}

echo "4 times default value 2 equals: " . getProduct(4) . "<br>";
echo "4 multiplied by 5 gives: " . getProduct(4, 5) . "<br>";

function increaseValue(&$val) {
    $val = $val + 1;
}

$counter = 10;
increaseValue($counter);
echo "After increasing, the new value is: $counter<br>";

function computeFactorial($value) {
    return ($value === 0) ? 1 : $value * computeFactorial($value - 1);
}

echo "Computed factorial of 5: " . computeFactorial(5) . "<br>";

?>
