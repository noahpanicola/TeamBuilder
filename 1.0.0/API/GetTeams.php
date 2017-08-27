<?php

session_start();
include '../Classes/Team.php';

if(!isset($_SESSION['Email'])){
    header("Location: ./Login.php?active=no");
    exit();
} else {
    $tc = new TeamCollection();
    echo $tc->getAll();
}

?>