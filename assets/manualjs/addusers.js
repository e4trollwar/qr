var app = angular.module('addusers', []);
app.controller('addusersCtrl', function ($scope,$http) { 
	$http({
		method:'post',
		url:'fetchUsers',
	}).then(function(response){	
		$scope.users = response.data;
	});
}); 