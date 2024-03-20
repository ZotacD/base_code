<?php

function db_connect()
{
    $host = $_ENV["DB_HOST"];
    $dbname = $_ENV["DB8NAME"];
    $user = $_ENV["DB_USERNAME"];
    $password = $_ENV["DB_PASSWORD"];

    $bdd = new PDO('mysql:host=' . $host . ';dbname=' . $dbname, $user, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
    return $bdd;
}

?>
