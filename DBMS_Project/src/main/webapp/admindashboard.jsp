<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

<meta charset="ISO-8859-1">
<title>Ankush Ingale2</title>
<title>Ankush Chavan</title>
<title>Kavya Chavan</title>


</head>
<body>
<h1>hello</h1>
 <%
                		if(!session.isNew())
                		{
						String value=(String)session.getAttribute("admin_login_status");
						if(value=="true")
						{
/* 							System.out.println("Inside script");
 */				%>
				
							<script type="text/javascript">
		
     						Swal.fire({
       						//  position: 'top-end',
        					icon: 'success',
/*         					title:'Oops..!!',
 */        					text: 'Admin login Successfully',
/*         					showConfirmButton: true,
 */        						
      					})
      					
      					
  
   							</script>	
   							
   							
   							
				<%
						}
                	}
/*  		session.removeAttribute("error_msg");
 */		session.invalidate();

 


                 		
				%> 
 <script type = "text/javascript" >
          history.pushState(null, null, 'admindashboard.jsp');
          window.addEventListener('popstate', function (event) {
              history.pushState(null, null, 'admindashboard.jsp');
      });

     </script>
     
   <script type="text/javascript">
   setInterval(function(){
	   window.location.reload();
	   window.stop();
	 },100)
   </script>
</body>
</html>