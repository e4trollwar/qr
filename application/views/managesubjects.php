<body id="content" ng-controller="managesubjectsCtrl">

<div class="uk-overflow-auto">
    <table class="uk-table uk-table-small uk-table-divider">
    	
        <thead>
            <tr>
                <th>SUBJECT CODE</th>
                <th>SUBJECT NAME</th>
                <TH>ACTION</TH>
            </tr>
        </thead>
        <tbody>
            <tr >
                <td>{{x.usn}}xxxx</td>
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