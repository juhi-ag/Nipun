<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="resource/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="resource/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="resource/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
     
           
          
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="resource/images/logo.PNG" />

                    </a>
                    
                </div>
              
                <span class="logout-spn" >
                   

                </span>
            </div>
        </div>
        <div class="container">
	<div class="wrapper"> 
		<div class="row">
				<div class="col-md-6 col-centered">
				<div >
                    <br>
                </div> <br>
					
						<h2 class="col-lg-12">User OTP Submition</h2><br></br>
						<div id="msg" class="col-md-12 text-center" style="color:#ff0000; font-size:12px"></div>
						<form method="post" action="submitotp" id="submitotp_form" class="form-horizontal">
							<div class="col-md-10 col-centered">
								<div class="form-group">
									<label class="control-label col-md-4">Enter OTP:</label>
									<div class="col-md-8">
										<input type="password" maxlength="45" class="form-control" id="j_userotp" name="j_userotp">
										<span id="errDiv1"></span>
										<span id="errDiv"></span>
										<div id="errDiv" class="col-md-12" style="color:#ff0000; font-size:12px"></div>
									</div>
								</div>
								
								
								<div class="form-group">
									<div class="col-md-12 text-center" style="margin-top:15px">
										<input type="button" id="sbmt_btn" class="btn btn-primary btn-md" value="Submit" onClick="validateLogin()">										
									</div>
								</div>
							</div>
							
						</form>
					
				</div>
		</div>
	</div>
 </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
        <p></p><br></br><br></br><br></br><br></br>
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                    &copy;  2018 yourdomain.com | Design by: <a href="#" style="color:#008800;" target="_blank">Himanshu Agarwal</a>
                </div>
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="resource/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="resource/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="resource/js/custom.js"></script>
    
   <script>
		$(document).keypress(function(event){
		     var keycode = event.keyCode;
		     if(keycode == '13'){
		      $("#sbmt_btn").click();
		     }
		}); 
	   	 
	   	 function validateLogin()
	   	 {
	   		  		
	   	  	if($("#j_userotp").val()=="") {
				$('#errDiv1').show().html('* Kindly provide OTP.').fadeOut(5000);
		 		return false;   
	   	  	}
	   	 	$("#submitotp_form").submit();
	   	 }
	</script>
   	 
   	 <% if(request.getParameter("error")!=null && request.getParameter("error").equals("1")){%>
    <script>
    	$('#errDiv').show().html('* OTP is wrong.').fadeOut(5000);
    </script>
    
  	<%}%>
</body>
</html>
     
     