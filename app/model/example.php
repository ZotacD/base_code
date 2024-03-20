<?php
require_once($_ENV["BASE_DIR"] . "/db-config.php");

function getUsers() {
    $bdd = db_connect();
    $bddQuery = $bdd->prepare("SELECT * FROM USER");
    $bddQuery->execute();
    $users = $bddQuery->fetchAll(PDO::FETCH_ASSOC);
    return $users;
}

function addUser()
{

}

function updateUser()
{
    
}

function removeUser()
{

}