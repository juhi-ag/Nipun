<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Selling Simplified: EAS</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
<script type="text/javascript" src="resource/script/jquery-2.1.1.min.js"></script>
<!-- script type="text/javascript" src="resource/script/jquery.dataTables.min.js"></script -->

<!-- Bootstrap styles -->
<link rel="stylesheet" href="resource/css/bootstrap.min.css" />
<link href="resource/css/grid.css" rel="stylesheet">
<link href="resource/css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="resource/images/favicon-ico.png" type="image/x-icon">
<link rel="icon" href="resource/images/favicon-ico.png" type="image/x-icon"> 
<link href="resource/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<script type="text/javascript">
	function changePassword()
	{
		if($("#oldPassword").val()=="") {
			$('#errDiv').show().html('* Please enter a old password.').fadeOut(5000);
			return false;
		}
		else if($("#newPassword").val()=="") {
			$('#errDiv1').show().html('* Please enter a new password.').fadeOut(5000);
			return false;
		}
		else if($("#cnewPassword").val()=="") {
			$('#errDiv2').show().html('* Please enter a confirm password.').fadeOut(5000);
			return false;
		}
		else if($("#newPassword").val()!=$("#cnewPassword").val())
		{
			$('#errDiv2').show().html('* New Password and Confirm Password does not match.').fadeOut(5000);
			return false;
		}
		else {
			$.ajax({
        		url : "saveChangePassword?oldPassword="+$("#oldPassword").val()+"&newPassword="+$("#cnewPassword").val(),
        		success : function(result) {
        			if(result == 'success') {
        				$("#msg").show().html("* Password is changed successfully.").fadeOut(5000); 
        			}
        			else {
        				$("#errDiv").show().html("* Old Password entered is wrong. Kindly check it again.").fadeOut(5000); 
        			}
        		}
        	});  
		}
	}
</script>

<style>
.form-container
{
width:60%;
margin:0 auto;
 border:2px solid #51910F;
 margin-top:70px;
}
.sub-btn
{
 text-align:center; margin-top:30px;
 padding-left:30px; padding-right:30px;
 margin-bottom:30px;
}
.message 
{
	color:#ff0000;
	text-align:center;
	margin-bottom:10px;
}
</style>
</head>

<body style="background-color:#fff">
<jsp:include page="template/header.jsp"></jsp:include>
<!-- Branding -->
 <!-- <div class="navbar navbar-fixed-top hdrbg">
 	<div class="container">
		<div class="navbar-header col-lg-5">
			<a class="navbar-brand" href="#"><img src="resource/images/brandlogo.png" alt="Selling Simplified India Pvt. Ltd." title="Selling Simplified India Pvt. Ltd." /></a>
   		</div>
   		<div class="navbar-header col-lg-7">
    		<span class="tagline">Marketing as a service<br />success as a solution
    		</span>
   		</div>
  	</div>
    <div class="green"></div>
 </div> --> 
 <!-- /Branding/ -->
 
<div class="container">
	<div class="wrapper"> 
		<div class="row">
				<div class="col-md-6 col-centered">
					<fieldset>
						<legend>Change Password</legend>
						<div id="msg" class="col-md-12 text-center" style="color:#ff0000; font-size:12px"></div>
						<form class="form-horizontal" style="margin-top:20px" action="#">
							<div class="col-md-10 col-centered">
								<div class="form-group">
									<label class="control-label col-md-4">Old Password:</label>
									<div class="col-md-8">
										<input type="password" maxlength="45" class="form-control" id="oldPassword" name="oldPassword">
										<div id="errDiv" class="col-md-12" style="color:#ff0000; font-size:12px"></div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4">New Password:</label>
									<div class="col-md-8">
										<input type="password" maxlength="45" class="form-control" id="newPassword" name="newPassword">
										<div id="errDiv1" class="col-md-12" style="color:#ff0000; font-size:12px"></div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-4">Confirm Password:</label>
									<div class="col-md-8">
										<input type="password" maxlength="45" class="form-control" id="cnewPassword" name="cnewPassword">
										<div id="errDiv2" class="col-lg-12" style="color:#ff0000; font-size:12px"></div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12 text-center" style="margin-top:20px">
										<input type="button" class="btn btn-primary btn-md" value="Submit" onClick="changePassword()">
										<input type="reset" class="btn btn-primary btn-md" value="Reset">
									</div>
								</div>
							</div>
							
						</form>
					</fieldset>
				</div>
		</div>
	</div>
 </div>
</body> 
        
</html>