
<aside id="left-col" class="uk-light uk-visible@m" ng-controller="navigationCtrl">
    
    <div class="left-content-box  content-box-dark">
        <img src="<?php echo base_url()?>images/defaultProfile.jpg" alt="" class="uk-border-circle profile-img">
        <h4 class="uk-text-center uk-margin-remove-vertical text-light">John Doe</h4>
        
        <div class="uk-position-relative uk-text-center uk-display-block">
            <a href="#" class="uk-text-small uk-text-muted uk-display-block uk-text-center" data-uk-icon="icon: triangle-down; ratio: 0.7">Admin</a>
            <!-- user dropdown -->
            <div class="uk-dropdown user-drop" data-uk-dropdown="mode: click; pos: bottom-center; animation: uk-animation-slide-bottom-small; duration: 150">
                <ul class="uk-nav uk-dropdown-nav uk-text-left">
                        <li class="uk-nav-divider"></li>
                        <li><a href="#"><span data-uk-icon="icon: settings"></span><span class="uk-margin-left"></span> Settings</a></li>
                        <li><a href="#"><span data-uk-icon="icon: sign-out"></span><span class="uk-margin-left">Sign Out</a></li>
                </ul>
            </div> 
            <!-- /user dropdown -->
        </div>
    </div>
    
    <div class="left-nav-wrap">
        <ul class="uk-nav uk-nav-default uk-nav-parent-icon" data-uk-nav>
            <li class="uk-nav-header">ACTIONS</li>
            
            <li  class="uk-parent"><a href="#">USERS</a>
                <ul class="uk-nav-sub">
                    <li><a href="<?php echo base_url() ?>index/manageusers">Manage User</a></li>
                    <li><a href="<?php echo base_url() ?>index/addusers">Add User</a></li>
                </ul>
            </li>

             <li  class="uk-parent"><a href="#">STUDENTS & QR</a>
                <ul class="uk-nav-sub">
                    <li><a href="<?php echo base_url() ?>index/managestudents">Manage Students</a></li>
                    <li><a href="<?php echo base_url() ?>index/addstudents">Add Student</a></li>
                </ul>
            </li>
             <li  class="uk-parent"><a href="#">SUBJECTS</a>
                <ul class="uk-nav-sub">
                    <li><a href="<?php echo base_url() ?>index/managesubjects">Manage Subjects</a></li>
                    <li><a href="<?php echo base_url() ?>index/addsubjects">Add Subjects</a></li>
                </ul>
            </li>
            <li><a href="<?php echo base_url() ?>index/attendanceReports">ATTENDANCE REPORTS</a></li>
             <li><a href="<?php echo base_url() ?>index/classes">CLASSES</a></li>
        </ul>

        
    </div>
</aside>
<!-- /LEFT BAR -->