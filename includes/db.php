<?php
try {
    $pdo = new PDO("mysql:host=localhost;dbname=bg", "root", "");
} catch (PDOException $e) {
    echo $e->getMessage();
    die;
}

function createRegistr($data, $pdo)
{
    $sql = "INSERT INTO users (name, email, tel) VALUES (:name, :email, :tel)";
    $query = $pdo->prepare($sql);
    return $result = $query->execute($data);
}

function getLastId($pdo)
{
    $id = $pdo->lastInsertId();
    $userCurrent = [$id];
    return $userCurrent[0];
}

function createOrder($orderData, $pdo)
{
    $sql = "INSERT INTO `order` (`user_id`, `street`, `home`, `part`, `appt`, `floor`, `comment`, `change_money`, `card`, `call`)
     VALUES (:user_id, :street, :home, :part, :appt, :floor, :comment, :change_money, :card, :call)";
    $query = $pdo->prepare($sql);
    return $res = $query->execute($orderData);
}

function userRegistrInfo($id, $pdo)
{
    $sql = $pdo->prepare("SELECT * FROM users WHERE id = :id");
    $query = $sql->bindParam(":id", $id);
    $sql->execute();
    return $result = $sql->fetch(PDO::FETCH_ASSOC);
}

function userLastOrder($id, $pdo)
{
    $sql = $pdo->prepare("SELECT * FROM users LEFT JOIN `order` ON user_id = users.id
    WHERE users.id = $id ORDER BY `order`.id DESC LIMIT 1");
    $sql->execute();
    return $result = $sql->fetch(PDO::FETCH_ASSOC);
}

function getAllUser($pdo)
{
    $sql = $pdo->prepare("SELECT * FROM `users`");
    $sql->execute();
    return $result = $sql->fetchAll(PDO::FETCH_ASSOC);
}

function getAllOrders($pdo)
{
    $sql = $pdo->prepare("SELECT * FROM `order`");
    $sql->execute();
    return $result = $sql->fetchAll(PDO::FETCH_ASSOC);
}

function getCountOrderOfUser($id, $pdo)
{
    $sql = $pdo->prepare("SELECT COUNT(*) FROM `order` WHERE user_id = $id");
    $sql->execute();
    return $sql->fetchColumn();
}