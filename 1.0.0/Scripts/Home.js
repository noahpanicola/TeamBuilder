var app = angular.module("TeamApp", []);

app.controller('teamController', function ($scope, $http) {
    $http.get('API/GetTeams.php').
        success(function(data, status, headers, config){
            $scope.teams = data;
            console.log(data);
        }).
        error(function(data, status, headers, config){
            console.log("There was an error");
        });
});