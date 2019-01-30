<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Content Wrapper. Contains page content -->
<script type="text/javascript">
   $(document).ready(function(){
   
     $("#progress-wrp").hide();
     $(".progress").hide();
   //  $("#output").hide();
   
     $("#upload_form").on("submit",function(event)
     {
       
       console.log('Ha di submit');
       var result_output       = '#messageAlert';
       var proceed = true;
       var error = [];
       var total_file_size = 0;
       var progress_bar_id     = '#progress-wrp'; //ID of an element for response output
       var progress_bar_id_lte ='#progress-bar-adminlte';
       var my_form_id        = '#upload_form'; //ID of an element for response output
       $(progress_bar_id +" .progress-bar").css("width", "0%");
       $(progress_bar_id + " .status").text("0%");
       var submit_btn  = $(this).find("input[type=submit]"); //form submit button  
       var form_data = new FormData(this); //Creates new FormData object
        // var post_url = $(this).attr("action"); //get action URL of form
       console.log(form_data);
         $.ajax({
                 url : "<?php echo base_url('dashboard/uploadExcel')?>",
                 type: "POST",
                 data : form_data,
                 contentType: false,
                 cache: false,
                 processData:false,
                 xhr: function(){
                   //upload Progress
                   $("#progress-wrp").show();
                   $(".progress").show();
                   var xhr = $.ajaxSettings.xhr();
                   if (xhr.upload) {
                     console.log('inside this');
                     xhr.upload.addEventListener('progress', function(event) {
                       var percent = 0;
                       var position = event.loaded || event.position;
                       var total = event.total;
                       if (event.lengthComputable) {
                         percent = Math.ceil(position / total * 100);
                       }
                       //update progressbar
                       /*$(progress_bar_id +" .progress-bar").css("width", + percent +"%");
                       $(progress_bar_id + " .status").text(percent +"%");*/
                       //lte
                       $(progress_bar_id_lte ).css("width", + percent +"%");
                       $("sr-only").text(percent +"%");
                     }, true);
                   }
                   return xhr;
                 },
                 mimeType:"multipart/form-data"
               }).done(function(res){ //
                 $(my_form_id)[0].reset(); //reset form
                 $("#output").show();
                 $(result_output).html(res); //output response from server
                 submit_btn.val("Upload").prop( "disabled", false); //enable submit button once ajax is done
                 $(".progress").hide();
                 $(progress_bar_id_lte ).css("width", "0%");
                 $("sr-only").text("0%");
                 alert('Upload Success');
   
               });
               return false;
     });
  
   });
    function LimitThis() {
  var myObject=event.srcElement;
  if (myObject.value.length==myObject.maxLength*1) return false;
}

function CountThis(visCnt) { 
  var myObject=event.srcElement;
  if (myObject.value.length>myObject.maxLength*1) myObject.value=myObject.value.substring(0,myObject.maxLength*1);
  if (visCnt) visCnt.innerText=myObject.maxLength-myObject.value.length;
  
}
</script>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       <i class="fa fa-dashboard"></i> Dashboard
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="row">
      
<div class="col-md-12">
                <div class="box box-danger">
                  <div class="box-header with-border">
                     <h3 class="box-title">Form Reporting</h3>
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
                  </div>
  
               </div>
 </div>
    


    </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->