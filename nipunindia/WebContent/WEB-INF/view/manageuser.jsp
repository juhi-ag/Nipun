<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
    <link href="resource/css/bootstrap.css" rel="stylesheet" />
    <link href="resource/css/jquery.dataTables.css" rel="stylesheet" />
    <link href="resource/css/custom.css" rel="stylesheet" />
    <link href="resource/css/font-awesome.css" rel="stylesheet" />
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
                  <a href="#" style="color:#008800;">logout</a>  

                </span>
            </div>  
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
 					<li>
                        <a href="dashboard.html" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>
                   <li class="active-link">
                        <a href="/nipunindia/manageuser"><i class="fa fa-table "></i>Manage User<span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="manageproject.html"><i class="fa fa-table "></i>Manage Project<span class="badge">Included</span></a>
                    </li>
                    <li>
                        <a href="otp.html"><i class="fa fa-edit "></i>OTP</a>
                    </li>
                 	<li>
                        <a href="#"><i class="fa fa-qrcode "></i>Assigned People</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>Manage Designation</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                	<div class="col-md-12">
                    	<h2>Manage User</h2>   
                       	<div class="hvTable">
                        	<fieldset>
                        		<table id="manageUserTable" class="display compact table table-striped table-bordered" cellspacing="0" width="100%">
                            		<thead>
	                                	<tr>
		                                    <th>First Name</th>
		                                    <th>Last Name</th>
		                                    <th>Username</th>
											<th>Telephone No.</th>
											<th>Edit</th>
											<th>Delete</th>
		                                </tr>
                            		</thead>
                            		<tbody>
                               
                            		</tbody>
                        		</table>
                        	</fieldset>
                    	</div> 
						<div class="row">
                    		<div class="col-lg-4 col-md-4"></div>
                    		<div class="col-lg-4 col-md-4">
                 				<br>
                        		<a href="#" data-toggle="modal" data-target="#addUserModal" class="btn btn-danger btn-lg btn-block">Add User</a>
                    		</div>
                    		<div class="col-lg-4 col-md-4">
                    		</div>
                		</div>
                    </div>
                </div>              
                <hr />
    		</div>
          </div>
        </div>
        
        <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" data-keyboard="false" data-backdrop="static">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close" id="closeUserModal"><span aria-hidden="true" class="cbtn">&times;</span></button>
					<h4 class="modal-title" id="addUserModalLabel">Add User</h4>
				</div>
				<div class="modal-body">
					<div class="clearfix"></div>
					<div id="addProgramRow" class="row" role="alert">
						<div class="col-md-12">
							<div class="panel-body">
								<div class="row">
					        	    <div class="col-lg-12 ">
					            	    <div class="form-group">
					                	   	<form method="post" action="j_spring_security_check" id="adduser_form" class="form-horizontal">
					                	   		<input type="hidden" id="j_userauthid" name="j_userauthid" />
					                	   		<input type="hidden" id="j_userid" name="j_userid" />
					                	   		
						                    	<div class="col-lg-12">
						                           	<div class="col-lg-5"><label>First Name</label></div> 
						                           	<div class="col-lg-7"><input type="text" class="form-control" id="j_firstname" name="j_firstname" placeholder="First Name" /></div>
						                        </div>
						                        <div class="col-lg-12">
													<div class="col-lg-5"><label>Last Name</label></div> 
													<div class="col-lg-7"><input type="text" class="form-control" id="j_lastname" name="j_lastname" placeholder="Last Name" /></div>
						                        </div>
						                        <div class="col-lg-12">
						                        	<div class="col-lg-5"><label>Email</label></div> 
						                            <div class="col-lg-7">
						                            	<input type="text" class="form-control" id="j_email" name="j_email" placeholder="Email" />
						                            	<label id="j_email-error" class="error"></label>
						                            </div>
												</div>
												<div class="col-lg-12">
													<div class="col-lg-5"><label>Telephone Number</label></div> 
													<div class="col-lg-7"><input type="text" class="form-control" id="j_telephone" name="j_telephone" placeholder="Telephone Number" /></div>
												</div>
												<div class="col-lg-12">
													<div class="col-lg-5"><label>Temp Password</label></div> 
													<div class="col-lg-7">
														<input type="password" class="form-control" id="j_password" name="j_password" placeholder="Temp Password"  />
													</div>
												</div>
						                        <div class="col-lg-12">
													<div class="col-lg-5"><label>Confirm Password</label></div> 
													<div class="col-lg-7">
														<input type="password" class="form-control" id="j_repassword" name="j_repassword" placeholder="Confirm Password"  />
														<label id="j_repassword-error" class="error"></label>
													</div>
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
				                </div>              
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
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
    <script type="text/javascript" src="resource/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script type="text/javascript" src="resource/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script type="text/javascript" src="resource/js/custom.js"></script>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
    
    <script>
    var recManageUserArr = new Array();
    var recManageUser = '';
    
    $(document).ready(function() {
    	$('#manageUserTable').dataTable();
    	loadManageUserTable();
    	
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
    
    function loadManageUserTable() {
    	$.ajax({
    		url:'loadManageUserData.do', 
    		success: function(data, textStatus, xhr)
    		{
    			$('#manageUserTable').dataTable().fnClearTable();
    			data=JSON.parse(data);
    			if(data != null && data.length > 0) {
    				index=1;
    				for(i=0; i<data.length; i++) {
    					recManageUserArr=data;
    					
    					var firstName = '';
    					var lastName = '';
    					var username = '';
    					var telephoneNo = '';

    					if(data[i].firstname != null && data[i].firstname != "") {
    						firstName = data[i].firstname;
    					}
    					if(data[i].lastname != null && data[i].lastname != "") {
    						lastName = data[i].lastname;
    					}
    					if(data[i].email != null && data[i].email != "") {
    						username = data[i].email;
    					}
    					if(data[i].mobile != null && data[i].mobile != "") {
    						telephoneNo = data[i].mobile;
    					}
    					
    					$('#manageUserTable').dataTable().fnAddData(["<tr><td>"+firstName+"</td>","<td>"+lastName+"</td>","<td>"+username+"</td>","<td>"+telephoneNo+"</td>","<td><button type='button' id='modifyUser' class='btn btn-warning btn-xs margR10' onClick='modifyUser("+i+")'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span> Edit</button></td>","<td><button type='button' class='btn btn-danger btn-xs' onClick='deleteUser("+i+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span>Delete</button></td></tr>"]);
    					
    					index++;
    				}
    			}
    			else {
    			}
    		},
    		error: function(xhr, textStatus, errorThrow)
    		{
    			var row = $(this).closest('tr');
    			var nRow = row[0];
    			$('#manageUserTable').dataTable().fnDeleteRow(nRow);
    			
    		}
    	}) 
    }
    
    function modifyUser(index) {
    	$("#addUserModal").modal("show");
    	$("#addUserModalLabel").text("Edit User");
    	
    	recManageUser=recManageUserArr[index];
    	if(recManageUser != null) {
    		$("#j_firstname").val(recManageUser.firstname);
    		$("#j_lastname").val(recManageUser.lastname);
    		$("#j_email").val(recManageUser.email);
    		$("#j_telephone").val(recManageUser.mobile);
    		$("#j_password").val(recManageUser.password);
    		$("#j_repassword").val(recManageUser.password);
    		$("#j_userauthid").val(recManageUser.user_auth_id);
    		$("#j_userid").val(recManageUser.user_id);
    	}
    }
    
    function deleteUser(index) {
    	if(confirm("Are you sure you want to delete the user?")) {
    		recManageUser=recManageUserArr[index];
			
			$.ajax({
				url:"deleteUser.do?id="+recManageUser.user_auth_id,
				method:"POST",						
				success: function(data, textStatus, xhr)
				{
					if(data=='success'){
						loadManageUserTable();
					}else{
						
					}
				},
				error: function(xhr, textStatus, errorThrow)
				{	
					
				}
			}) ;
    	}
    	else {
    		return false;
    	}
    }    
    
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
				$('#j_repassword-error').show().html('* Temp Password and Confirm Password does not match.');
				setTimeout(function(){$('#j_repassword-error').hide();},5000);
				return false;
			}
			var fieldval="userId="+$("#j_userid").val()+"&userAuthId="+$("#j_userauthid").val()+"&firstName="+encodeURIComponent($("#j_firstname").val())+
			"&lastName="+encodeURIComponent($("#j_lastname").val())+"&email="+encodeURIComponent($("#j_email").val())+"&telephoneNumber="+encodeURIComponent($("#j_telephone").val())+
			"&tempPassword="+encodeURIComponent($("#j_password").val())+"&reTypePassword="+encodeURIComponent($("#j_repassword").val());
    	   	
			finalURL="createUser.do?"+fieldval;
    	  
    	   	$.ajax({
    	   		url:finalURL,
    	    	success : function(result) {
    	    		if(result == "userExists") {
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
