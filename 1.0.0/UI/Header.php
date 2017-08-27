<?php

//start the session
session_start();

//class libraries
include 'Classes/AppSettings.php';
include 'Classes/AppUser.php';
include 'Classes/Role.php';
include 'Classes/UserRole.php';
include 'Classes/Team.php';

//get website settings and current user
$title = new AppSettings('Main', 'WebsiteTitle');
$rootUrl = new AppSettings('Main', 'RootUrl');
$config = new AppSettings('Config', 'ConfigFilePath');

//check for authentication if not on login page
$auth = new AppSettings('Authentication', 'RequireAuthentication');

if(!isset($_SESSION['Email'])){
    header('Location: ./Login.php?active=no');
    exit();
} else {
    $ur = new UserRole($_SESSION['Email']);
    $u = new AppUser($ur->UserID);
    $r = new Role($ur->RoleID);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title><?php echo $title->SettingValue; ?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="Stylesheets/Site.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src = "https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="Scripts/Home.js"></script>
  <script src="Scripts/APS.UI.AppScript.js"></script>
</head>
<body>
    <nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
        </button>
            <a class="navbar-brand" href="#"><?php echo $title->SettingValue; ?></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a href="#">Home</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">My Teams</a></li>
                <li><a href="#">Customize</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                <a href="#">
                    <img class="img-circle" id="profile-thumb" src="<?php echo $u->UserImage; ?>" alt="Images/NoUserFound.png"/>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    </nav>