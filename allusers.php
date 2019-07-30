<?php
require_once "includes/db.php";

$allUsers = getAllUser($pdo);

foreach ($allUsers as $user) {
    echo $user["id"] . PHP_EOL;
    echo $user["name"] . PHP_EOL;
    echo $user["email"] . PHP_EOL;
    echo $user["tel"] . PHP_EOL;
    echo "<hr>" . PHP_EOL;
}

echo "<a href='allorders.php'>Смотреть все заказы</a>";