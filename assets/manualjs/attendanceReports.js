var app = angular.module('attendanceReports', []);
app.controller('attendanceReportCtrl', function ($scope,$http) { 
	$http({
		method:'post',
		url:'fetchStudents',
	}).then(function(response){	
		$scope.students = response.data;
	});
	
});   