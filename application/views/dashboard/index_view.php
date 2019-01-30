	<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				Dashboard
				<small>Version 2.0</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</section>

		<!-- Main content -->
		<section class="content">

			<div class="row">

				<!-- /.col -->
			</div>
			<!-- /.row -->

			<!-- Main row -->
			<div class="row">
				<!-- Left col -->
				<div class="col-md-12">

					<div class="row">
					
					 	<div class="col-md-12">
							<!-- USERS LIST -->
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Reporting</h3>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<div class="register-box-body">
										<?php 
										foreach($outputGrocery->css_files as $file): ?>
										  <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
										<?php endforeach; ?>
										<?php foreach($outputGrocery->js_files as $file): ?>
										  <script src="<?php echo $file; ?>"></script>
										<?php endforeach; ?>
										 <?php 
										                  echo $outputGrocery->output;
										                 ?>
									</div>
									<!--/.box -->
								</div>
								<!-- /.col -->
							</div>
					
						</div>
					</section>
					<!-- /.content -->
				</div>
	  <!-- /.content-wrapper -->