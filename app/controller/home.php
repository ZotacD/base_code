<?php

// Récupérer l'URL depuis le paramètre "url"
$requestUrl = isset($_GET['endpoint']) ? $_GET['endpoint'] : '/';

switch ($requestUrl) {
    case '/':
        require_once "model/home.php";
        require_once "view/home.php";
        break;
    default:
        header("Location: " . "" . "/404");
        exit();
}