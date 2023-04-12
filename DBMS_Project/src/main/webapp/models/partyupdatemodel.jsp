<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
     <style type="text/css">
 
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');
</style>
<title>Insert title here</title>
</head>
<body>
 <div class="modal fade" id="mymodel">
              <div class="modal-dialog model-dialog-center">
               <div class="modal-content">

                <div class="modal-header">
                  <h3 class="text-centert text-primary">UpdateForm</h3>
                  <button type="button" class="close" data-dismiss="modal">  &times;</button>
                </div>

                <div class="modal-body">
                  <form>
                    <div class="form-group">
                           <label>Username:</label>
                         <input type="text" name="" class="form-control">
                    </div>

                    <div class="form-group">
                      <label>Password:</label>
                    <input type="text" name="" class="form-control">
               </div>

               <div class="form-group">
                <label>Email:</label>
              <input type="text" name="" class="form-control">
         </div>
                  </form>
                </div>
                <div class="modal-footer justify-content-center">
                  <button class="btn btn-danger" data-dismiss="modal">Update</button>
                </div>




               </div>
              </div>
       </div>

</body>
</html>