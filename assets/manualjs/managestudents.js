var app = angular.module('managestudents', []);
app.controller('managestudentsCtrl', function ($scope,$http) { 

	$http({
		method:'post',
		url:'fetchStudents',
	}).then(function(response){	
		$scope.students = response.data;
	});
	
}); 