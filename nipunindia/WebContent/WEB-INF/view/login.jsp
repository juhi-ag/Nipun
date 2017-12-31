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
          <!--header portion -->
    <div id="login-wrapper">
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
                  <a href="#" style="color:#008800;">logout</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
    
        <!-- /. NAV SIDE  -->
        <div id="login-page-wrapper" >
          <div id="login-page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2><b><ul>Welcome to Nipun</ul></b></h2>
                    </div>
                </div>
                <!-- /. ROW  -->
               <!-- <hr> -->
                <div class="row">
                 
                <!-- /. ROW  -->
               <!-- <hr> -->
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                        	<form method="post" action="j_spring_security_check" id="login_form" class="form-horizontal">
	                            <label>User Name</label>
	                            <input type="text" class="form-control" id="j_username" name="j_username" placeholder="Username"  />
	                            <span id="errDiv"></span>
								<div></div>
								<label>Password</label>
	                            <input type="password" class="form-control" id="j_password" name="j_password" placeholder="Password" />
	                            <span id="errDiv1"></span>
								<!-- <a href="dashboard.html" target="_blank" class="btn login-btn-danger login-btn-lg btn-block">login</a> -->
								<input type="button" id="sbmt_btn" value="Login" class="btn login-btn-danger login-btn-lg btn-block" onClick="validateLogin()">
							</form>
						</div>
                    </div>
					<!--<hl>-->
                    <dv class="mycol">Hi, terms and conditions for login are as belows.
					<ul>a. He or she must be an employe of Nipun</ul>
					<ul>b. He or she must be authorised to access Nipun</ul>
					<ul>c. You are only permitted to access your account</ul>
					<ul>d. If we find you to access others account, so there will be strict action anainst you.</ul>
					<ul>e. If you are new in orgnisation and you dont have access, so connect to your manager.</ul>
					<ul>f. It is recmondad that you can only login when you really want to use related to project.</ul>
					<ul>g. OTP is valid for an hour if you are unable to login for an hour period so regenrate the OTP.</ul>
					<ul>h.</ul>
					<ul>i..</ul>
					</diiv>
                </div>
               <!-- <hr> -->
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                    </div>
                </div>
                <!-- /. ROW  -->
                <!-- <hr> -->          
              <!-- <hr> -->
                 
                </div>
                <!-- /. ROW  -->

            </div>
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
             <div class="row">
                <div class="col-lg-12" >
                    &copy;  2018 yourdomain.com | Design by: <a href="#" style="color:#008800;"  target="_blank">Himanshu Agarwal</a>
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
	 
	   	function IsValidEmail(email) {
	        var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	         return expr.test(email);
	   	};
	   	 
	   	 function validateLogin()
	   	 {
	   		var email = document.getElementById("j_username").value;
	   		if (!IsValidEmail(email)) {
	   			$('#errDiv').show().html('* Please enter a valid email address.').fadeOut(5000);
	   			return false;
	   		}
	   		
	   	  	if($("#j_password").val()=="") {
				$('#errDiv1').show().html('* Kindly provide password.').fadeOut(5000);
		 		return false;   
	   	  	}
	   	 	$("#login_form").submit();
	   	 }
	</script>
   	 
   	 <% if(request.getParameter("error")!=null && request.getParameter("error").equals("1")){%>
    <script>
    	$('#errDiv').show().html('* Username or Password is wrong.').fadeOut(5000);
    </script>
    
  	<%}%>
   
</body>
</html>
