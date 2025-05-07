<?php
class Car {
    public $brand;
    public $color;

    public function __construct($brand, $color) {
        $this->brand = $brand;
        $this->color = $color;
    }

    public function displayInfo() {
        echo "This is a {$this->color} {$this->brand} car.";
    }
}

$myCar = new Car("Toyota", "Red");

$myCar->displayInfo();
?>
