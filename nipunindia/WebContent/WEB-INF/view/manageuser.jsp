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
                    
					<!--<div class="col-lg-4 col-md-4">
                        <label>Click to Add User</label>
                        <a href="blank.html" target="_blank" class="btn btn-danger btn-lg btn-block">Add User</a>
                    </div>-->
					<div class="row">
                    <div class="col-lg-4 col-md-4">
                    </div>
                  
                    <div class="col-lg-4 col-md-4">
                
                 <br>
                        <a href="blank.html" target="_blank" class="btn btn-danger btn-lg btn-block">Add User</a>
                   
                    </div>
                    <div class="col-lg-4 col-md-4">
                    </div>
                </div>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
              
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
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
    <script src="http://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
    
    <script>
    var recManageUserArr = new Array();
    var recManageUser = '';
    
    $(document).ready(function() {
    	$('#manageUserTable').dataTable();
    	loadManageUserTable();
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
    					$('#manageUserTable').dataTable().fnAddData(["<tr><td>"+firstName+"</td>","<td>"+lastName+"</td>","<td>"+username+"</td>","<td>"+telephoneNo+"</td>","<td><button type='button' id='modifyUser' class='btn btn-warning btn-xs margR10' onClick='modifyUser("+i+")'><span class='glyphicon glyphicon-edit' aria-hidden='true'></span> Edit</button></td>","<td><button type='button' id='deleteUser' class='btn btn-danger btn-xs' onClick='deleteUser("+i+")'><span class='glyphicon glyphicon-remove' aria-hidden='true'></span>Delete</button></td></tr>"]);
    					
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
    </script>
   
</body>
</html>
