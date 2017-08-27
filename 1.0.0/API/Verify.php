<?php 

//start the session
session_start();

//add class libraries
include '../Classes/UserRole.php';
include '../Classes/AppSettings.php';

$auth = new AppSettings('Authentication','RequireAuthentication');
if($auth->SettingValue == 0) {
    $_SESSION['Email'] = 'admin@appointlink.com';
    echo "Home.php?login=" . $_SESSION['Email'];
} else {
    //insert code for authenticating a user here
    //keep authentication setting at 0 until complete
    echo "Please change authentication setting to 0 in the database.";
}

?>