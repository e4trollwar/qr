<body id="content" ng-controller="managestudentsCtrl">

<div class="uk-overflow-auto">
    <table class="uk-table uk-table-small uk-table-divider">
    	
        <thead>
            <tr>
                <th>USN</th>
                <th>NAME</th>
                <th>GUARDIAN CONTACT</th>
                <th>STATUS</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="x in students">
                <td>{{x.usn}}</td>
                <td>{{x.lname + ' ' + x.fname}}</td>
                <td>{{0 + x.pcontact}}</td>
                <td>{{x.status}}</td>
                <td>
                	<button class="uk-button uk-button-small uk-button-secondary"><small>Generate QR</small></button>
                </td>
            </tr>
            
        </tbody>
    </table>
</div>
</body>