<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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