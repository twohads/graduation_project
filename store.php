<?php
session_start();
require_once "includes/db.php";
require_once "includes/function.php";

$registrData = [
    "name" => $_POST["name"],
    "email" => $_POST["email"],
    "tel" => $_POST["phone"]
];

// Регистрация -> формирование заказа
if (!isset($_SESSION['logged_user'])) {
    createRegistr($registrData, $pdo);
    $currentUser = getLastId($pdo);
    $_SESSION['logged_user' ] = $currentUser;
} else {
    $userLastOrder= userLastOrder($_SESSION['logged_user' ], $pdo);
  }

$orderData = [
    "user_id" => $_SESSION['logged_user' ],
    "street" => $_POST["street"],
    "home" => $_POST["home"],
    "part" => $_POST["part"],
    "appt" => $_POST["appt"],
    "floor" => $_POST["floor"],
    "comment" => $_POST["comment"],
    "card" => $_POST["payment"],
    "change_money" => $_POST["change_money"],
    "call" => $_POST["callback"]
];

$order = createOrder($orderData, $pdo);

//Формирование данных для письма
$countUserOrders = getCountOrderOfUser($_SESSION['logged_user' ], $pdo);
$userEmail  = $userLastOrder["email"];
$titleEmail = "Заказ № " . $userLastOrder["id"];
$messageEmailFerst = "Ваш заказ будет доставлен по адресу: " . $userLastOrder["street"] . ", " . $userLastOrder["home"]. ", кв
 " . $userLastOrder["part"] . " , апт " . $userLastOrder["appt"] . " , этаж " . $userLastOrder["floor"] . "<br>"
. "Спасибо - это ваш первый заказ";
$messageEmailNextOne = "Ваш заказ будет доставлен по адресу: " . $userLastOrder["street"] . ", " . $userLastOrder["home"]. ", кв
 " . $userLastOrder["part"] . " , апт " . $userLastOrder["appt"] . " , этаж " . $userLastOrder["floor"] . "<br>"
    . "Спасибо! Это уже $countUserOrders заказ";
$fromEmail = "From: От кого письмо <from@example.com>\r\n";

if($messageEmailNextOne < 1){
    sendMail($userEmail, $titleEmail, $messageEmailFerst, $fromEmail);
}else {
    sendMail($userEmail, $titleEmail, $messageEmailNextOne, $fromEmail);
}

header("Location: ".$_SERVER["HTTP_REFERER"]);
exit;