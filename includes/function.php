<?php
require_once "store.php";

function sendMail($userEmail, $titleEmail, $messageEmail, $fromEmail)
{
    mail($userEmail, $titleEmail, $messageEmail, $fromEmail);
}