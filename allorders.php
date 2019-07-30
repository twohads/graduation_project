<?php
require_once "includes/db.php";

$allOrders = getAllOrders($pdo);

foreach ($allOrders as $order){
    echo "Номер заказа: " . $order["id"] . PHP_EOL;
    echo "Пользователь: " . $order["user_id"] . PHP_EOL;
    echo $order["street"] . PHP_EOL;
    echo $order["home"] . PHP_EOL;
    echo $order["part"] . PHP_EOL;
    echo $order["appt"] . PHP_EOL;
    echo $order["floor"] . PHP_EOL;
    echo $order["comment"] . PHP_EOL;
    echo $order["change_money"] . PHP_EOL;
    echo $order["card"] . PHP_EOL;
    echo $order["call"] . PHP_EOL;
    echo "<hr>" . PHP_EOL;
}

echo "<a href='allusers.php'>Смотреть всех пользователей</a>";