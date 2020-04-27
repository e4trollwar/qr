<body ng-app="attendanceReport" ng-controller="attendanceReportCtrl">
<body id="content" ng-controller="managestudentsCtrl">

<div class="uk-overflow-auto">
    <table class="uk-table uk-table-small uk-table-divider">
    	
        <thead>
            <tr>
                <th>USN</th>
                <th>NAME</th>
                 <th>ATTENDANCE</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="x in students">
                <td>{{x.usn}}</td>
                <td>{{x.lname + ' '+ ' ' +x.fname}}</td>
                <td><small class="uk-text-danger">DANGER</small></td>
                <td><button class="uk-button uk-button-primary uk-button-small"><small>View Attendance</small></button></td>
            </tr>
            
        </tbody>
    </table>
</div>
</body>
	
</body>