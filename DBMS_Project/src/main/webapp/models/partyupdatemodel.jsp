<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.adminoperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    <link rel="stylesheet" href="dashboard.css">
    <script>
    

 $(document).ready(function(){
	$("#exampleModal").modal('show');
});
</script>
<style type="text/css">
body{
    background-image: url("1.jpg");
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat; 
}
</style>
<title>Insert title here</title>
</head>
<body>
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Open modal for @fat</button>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>
 -->
 <form action="../updateparty" method="post">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
     
      
        <form action="../updateparty" method="post">
        
         <%
      	String party_id=request.getParameter("party_id");
      	adminoperations aop=new adminoperations();
		ResultSet rs=aop.displayPartiesFrompid(party_id);
		
		if(rs.next())
		{
			
		%>
          <div class="form-group">
            <label for="party name" class="col-form-label">Party name:</label>
         <strong>   <input type="text" name="pname" value="<%=rs.getString(2)%>" class="form-control" id="recipient-name"></strong>
          </div>

          <div class="form-group">
            <label for="party leader" class="col-form-label">party leader:</label>
          <strong>  <input type="text" name="pleader" value="<%=rs.getString(3)%>" class="form-control" id="recipient-name"></strong>
          </div>
          
          <div class="form-group">
            <label for="party type" class="col-form-label">party type:</label>
           <strong> <input type="text" name="ptype" value="<%=rs.getString(4)%>" class="form-control" id="recipient-name"></strong>
            
          </div><div class="form-group">
            <label for="active members" class="col-form-label">active members:</label>
            <input type="text" name="activemembers" value="<%=rs.getString(5)%>" class="form-control" id="recipient-name">
            
          </div><div class="form-group">
            <label for="estimate date" class="col-form-label">estimate date:</label>
           <strong> <input type="date" name="estdate" value="<%=rs.getString(6)%>" class="form-control" id="recipient-name"></strong>
          </div>
          
          <div class="form-group">
            <label for="Head Quarters" class="col-form-label">Head Quarters:</label>
           <strong> <input type="text" name="head" value="<%=rs.getString(7)%>" class="form-control" id="recipient-name"></strong>
                       <input type="hidden" name="party_id" value="<%=rs.getString(1)%>" class="form-control" id="recipient-name">
           
          </div>
          
          <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="../partys.jsp">Close</a></button>
        <button type="submit" class="btn btn-primary">Send message</button>
      </div>
        </form>
      </div>
      
      <%
		}
	      %>
      
    </div>
  </div>
</div>
</form>
</body>
</html>