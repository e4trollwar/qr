<body id="content" ng-controller="manageusersCtrl">

<div class="uk-overflow-auto">
    <table class="uk-table uk-table-small uk-table-divider">
    	
        <thead>
            <tr>
                <th>NAME</th>
                <th>POSITION</th>
                <th>STATUS</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="x in users">
            	<td>{{x.lname +" "+ x.fname + " " +x.mname}}</td>
            	<td>{{x.position}}</td>
            	<td >
                    <img src="<?php echo base_url()?>images/icons/disabled.jpg" class="touch" style="width: 50px;">
                </td>
            	<td >
            		<span uk-icon="icon:trash" class="touch" uk-tooltip="delete"></span> 
            		<span uk-icon="icon:pencil" class="touch" uk-tooltip="edit"></span>
            		<span uk-icon="icon:expand" class="touch" uk-tooltip="view"></span>
            	</td>
                
            </tr>
            
        </tbody>
    </table>
</div>

</body>