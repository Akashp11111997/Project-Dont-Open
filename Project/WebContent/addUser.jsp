<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2><center>Welcome to Add User</center></h2>


<!-- <form action="AddUserController" method="post">

<div class="input-group mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text">Person</span>
    </div>
    <input type="text" class="form-control" name="fname" placeholder="First Name">
    <input type="text" class="form-control" name="lname" placeholder="Last Name">
  </div>
  
  
<br/> Enter First Name: <input type="text" name="fname" />
<br/>Enter Last Name: <input type="text" name="lname" /> 
<br/> Enter Gender: <input type="text" name="gender" />
<div class="input-group-prepend">
      <span class="input-group-text">Gender</span>
<select name="gender">
      <option selected>Other</option>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
    </select>
    </div>

<br/> Enter email: <input type="text" name="email" />
<br/> Enter Contact Number: <input type="text" name="contact" />
<br/> Enter UserId: <input type="text" name="userid" />
<br/> Enter Password: <input type="password" name="password" id="password"/><input type="checkbox" onclick="myFunction()">Show Password
<br/> <input  type="submit" value="ADD User" />
</form>

<form action="index.jsp">
         <button type="submit" class="btn btn-dark">Back</button>
</form>
 -->

<form action="AddUserController" method="post">


<div class="container">
       <table class="table table-striped">
          <tbody>
             <tr>
                <td colspan="1">
                   <form class="well form-horizontal">
                      <fieldset>
                         <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="fname" name="fname" placeholder="First Name" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Last Name</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="lname" name="lname" placeholder="Last Name" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         
                         
                         <div class="form-group">
                            <label class="col-md-4 control-label">Gender</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                  <select class="selectpicker form-control" name="gender">
      									<option selected>Other</option>
      									<option value="Male">Male</option>
      									<option value="Female">Female</option>
                                  </select>
                               </div>
                            </div>
                         </div>
                         
                         
                         <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span><input id="email" name="email" placeholder="Email" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Contact Number</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span><input id="contact" name="contact" placeholder="Contact Number" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">User Id</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="userid" name="userid" placeholder="User Id" class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Password</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span><input id="password" name="password" placeholder="Password" class="form-control" required="true" value="" type="password"><span class="input-group-addon"><button type="button" class="glyphicon glyphicon-eye-open" class="btn btn-info" onclick="myFunction()"></button></span></div>
                            </div>
                         </div>
                      </fieldset><input  type="submit" value="ADD User" />
                   </form>
                </td>
             </tr>
          </tbody>
       </table>
    </div>
</form>
<form action="index.jsp">
         <center><button type="submit" class="btn btn-dark">Back</button></center>
</form>

</body>
</html>