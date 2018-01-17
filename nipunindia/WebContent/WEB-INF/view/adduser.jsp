<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add User</title>
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
      
         <jsp:include page="header1.jsp" /> 
        <!-- /. NAV TOP  -->
        <jsp:include page="menu.jsp" /> 
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>Add User</h2>   
                    </div>
                 </div>
                 <div class="row">
                    <div class="col-lg-10 ">
                        <div class="form-group">
                        	<form method="post" action="j_spring_security_check" id="adduser_form" class="form-horizontal">
	                            <div class="col-lg-10">
	                            	<div class="col-lg-4"><label>First Name</label></div> 
	                            	<div class="col-lg-6"><input type="text" class="form-control" id="j_firstname" name="j_firstname" placeholder="First Name" /></div>
	                            </div>
	                            <div class="col-lg-10">
									<div class="col-lg-4"><label>Last Name</label></div> 
									<div class="col-lg-6"><input type="text" class="form-control" id="j_lastname" name="j_lastname" placeholder="Last Name" /></div>
	                            </div>
	                            <div class="col-lg-10">
	                            	<div class="col-lg-4"><label>Email</label></div> 
	                            	<div class="col-lg-6">
	                            		<input type="text" class="form-control" id="j_email" name="j_email" placeholder="Email" />
	                            		<label id="j_email-error" class="error"></label>
	                            	</div>
								</div>
								<div class="col-lg-10">
									<div class="col-lg-4"><label>Telephone Number</label></div> 
									<div class="col-lg-6"><input type="text" class="form-control" id="j_telephone" name="j_telephone" placeholder="Telephone Number" /></div>
								</div>
								<div class="col-lg-10">
									<div class="col-lg-4"><label>Temp Password</label></div> 
									<div class="col-lg-6">
										<input type="password" class="form-control" id="j_password" name="j_password" placeholder="Temp Password"  />
										<label id="j_password-error" class="error"></label>
									</div>
								</div>
	                            <div class="col-lg-10">
									<div class="col-lg-4"><label>Confirm Password</label></div> 
									<div class="col-lg-6"><input type="password" class="form-control" id="j_repassword" name="j_repassword" placeholder="Confirm Password"  /></div>
								</div>
	                          	<div class="col-lg-10">
	                          		<div class="col-lg-4"></div>
		                            <div class="col-lg-6">
										<input type="button" id="sbmt_btn" value="Submit" class="btn login-btn-danger login-btn-lg btn-block" onClick="addUser()">
									</div>
								</div>
							</form>
						</div>
                    </div>
                    
                   <!--  --> 
                </div>              
                 <!-- /. ROW  -->
              
                <div class="row">
                    <div class="col-lg-12 ">
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                           
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
         
  <jsp:include page="footer.jsp" />
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script type="text/javascript" src="resource/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script type="text/javascript" src="resource/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script type="text/javascript" src="resource/js/custom.js"></script>
    <script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
    
    <script>
	    $(document).ready(function(){
	    	$("#adduser_form").validate({
	    		rules: {
	    			j_firstname: "required",
	    			j_lastname: "required",
	    			j_email: "required",
	    			j_telephone: "required",
	    			j_password: "required",
	    			j_repassword: "required"
	            },
	    		messages: {
	    			j_firstname: "Please enter first name",
	    			j_lastname: "Please enter last name",
	    			j_email: "Please enter email",
	    			j_telephone: "Please enter telephone",
	    			j_password: "Please enter password",
	    			j_repassword: "Please enter confirm password"
	    		},
	    	});
	    });
	    
	    function IsValidEmail(email) {
	        var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	    	return expr.test(email);
	    };
	    
    	function addUser() {
    		if($("#adduser_form").valid()) {
    			if (!IsValidEmail($("#j_email").val())) {
    				$("#j_email-error").show().html('* Please enter a valid email address.');
    				setTimeout(function(){$('#j_email-error').hide();},5000);
    				return false;
    			}
    			if($("#j_password").val()!=$("#j_repassword").val())
    			{
    				$('#j_password-error').show().html('* Temp Password and Confirm Password does not match.');
    				setTimeout(function(){$('#j_password-error').hide();},5000);
    				return false;
    			}
    			var fieldval="firstName="+encodeURIComponent($("#j_firstname").val())+"&lastName="+encodeURIComponent($("#j_lastname").val())+"&email="+encodeURIComponent($("#j_email").val())+
    			"&telephoneNumber="+encodeURIComponent($("#j_telephone").val())+"&tempPassword="+encodeURIComponent($("#j_password").val())+"&reTypePassword="+encodeURIComponent($("#j_repassword").val());
	    	   	
    			finalURL="createUser.do?"+fieldval;
	    	  
	    	   	$.ajax({
	    	   		url:finalURL,
	    	    	success : function(result) {
	    	    		result = JSON.parse(result);
	    	    		if(result.message == "userExists") {
	    	    			$("#j_email-error").html("Email already exists.").show();
			        		setTimeout(function(){$('#j_email-error').hide();},5000);
	    	    		}
	    	    		else {
	    	    			setTimeout(function(){window.location.href="/nipunindia/manageuser";},3000);
	    	    		}
	    	    	}    
	    		});
    		}
    	}
    </script>
    
   
</body>
</html>
