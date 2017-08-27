<!--Include the html header-->
<?php include 'UI/Header.php'; ?>

<div class="container-fluid" id="head-content">
    <img class="img-circle" id="profile-home" src="<?php echo $u->UserImage; ?>" alt="Images/NoUserFound.png"/>
    <?php echo "<h3>$u->FirstName $u->LastName <h3>"; ?>
</div>

<div class="container" id="team-main" ng-app = "TeamApp" ng-controller = "teamController">
    <div class="team-div" ng-repeat="team in teams">
        <img class="img-circle img-thumbnail team-img" src="{{team.TeamImage}}" />
    </div>
</div>

<!--Include the html footer -->
<?php include 'UI/Footer.php'; ?>