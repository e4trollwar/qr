var app = angular.module('manageusers', []);
app.controller('manageusersCtrl', function ($scope,$http) { 
	$http({
		method:'post',
		url:'fetchUsers',
	}).then(function(response){	
		$scope.users = response.data;
	});
}); 