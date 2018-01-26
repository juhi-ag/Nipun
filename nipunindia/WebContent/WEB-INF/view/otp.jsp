<%@page import="java.util.*" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>One Time Password</title>
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
       
          
  
      
         <jsp:include page="header1.jsp" /> 
        <!-- /. NAV TOP  -->
        <jsp:include page="menu.jsp" /> 
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                  <div class="col-md-12"> <br></br>
                  <h2>One Time Password</h2>  
                    
                      
                       <div class="hvTable">
                        <h5></h5>
                        <fieldset>
                        <table class="display compact table table-striped table-bordered" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>User ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>e-mail Id</th>
									<th>User Tel No.</th>
									 <th>OTP</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="rtrvOTP" items="${retriveOTP}">
                                <tr>
                                    <td>${rtrvOTP.userID}</td>
                                    <td>${rtrvOTP.userFirstName}</td>
                                    <td>${rtrvOTP.userLastName}</td>
                                    <td>${rtrvOTP.userEmail}</td>
									<td>${rtrvOTP.userMobileNo}</td>
									<td>${rtrvOTP.userOtp}</td>
                                </tr>
                           </c:forEach>                                 
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
                      <!--  <a href="blank.html" target="_blank" class="btn btn-danger btn-lg btn-block">Add Project</a>-->
                    </div>
                    <div class="col-lg-4 col-md-4">
                    </div>
                </div>
                    </div>
                
                 </div>              
                 <!-- /. ROW  -->
                  <hr />
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
      
       
  <jsp:include page="footer.jsp" />
     <!-- /. WRAPPER  -->
      <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="resource/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="resource/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="resource/js/custom.js"></script> </body>
</html>
