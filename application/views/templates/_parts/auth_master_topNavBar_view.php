<header class="main-header">
    <!-- Logo -->
    <a href="<?php echo base_url()?>dashboard" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Dashboard</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Dashboard</b> Helpdesk</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          
          <!-- Notifications: style can be found in dropdown.less -->
          
          <!-- Tasks: style can be found in dropdown.less -->
          
          <!-- User Account: style can be found in dropdown.less -->
		  <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-danger"></span>
            </a>
            
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo base_url()?>assets/uploads/files/<?php echo $user->profile_pic;?>" class="user-image" alt="User Image">
              <span class="hidden-xs"><?php echo $user->first_name.' '.$user->last_name;?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo base_url()?>assets/uploads/files/<?php echo $user->profile_pic;?>" class="img-circle" alt="User Image">

                <p>
                  <?php echo $user->company;?> 
                  
                </p>
              </li>
              <!-- Menu Body -->
              
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <?php echo anchor('user/logout', 'Logout');?>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>

    </nav>
  </header>
  