<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.16/dist/sweetalert2.all.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dashboard.css">
    <title>Document</title>
    <style type="text/css">
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background-image: url("1.jpg");
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat; 
}
/* SIDE BAR CSS */
.header{
    position: fixed;
    width: 100%;
    height: 100vh;
   
    /* background:pink;*/
}
.side-nav{
    width: 250px;
    height: 100%;
    background: rgba(255,255,255,0.10);
    position:fixed;
    top: 0;
    left: 0;
    padding: 20px 30px;

}
.nav-link{
    list-style: none;
    position: relative;
    margin-top: 150px;
    margin-right: 50px;
}
.nav-link li{
    padding: 10px 20px;
    width: 20%;

}
.nav-link li a{
      color: #fff;
    text-decoration: none;
    padding: 10px 40px;
    display: flex;
    align-items: center;
    left: 10px;
    margin-right: 50px;
    border-radius: 30px;
    
}
.nav-link li a i{
    font-size: 22px;
    margin-right: 20px;
}
/* .active{
    
    width: 204px;
    height: 47px;
    position: absolute;
    left: 20;
    top: 2.2%;
    z-index: -1;
    border-radius: 30px;
    background: rgba(255,255,255,0.7);
    left: 10px;
    margin-right: 50px;
    border-radius: 30px;
    margin-left: 10px;

}  */
.nav-link li a:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
    border-radius: 30px;
    color: #093a96;
    background: rgba(255,255,255,0.7);
    transition: 0.100s;
}

@media only screen and (max-width:600px) {
    .side-nav{
        width: 110px;
    }
    .nav-link li a p{
        display: none;
    }
    
}
/* table CSS */
th, td {  
    padding: 10px 10px 10px 10px;  
    text-align: center;
    background: rgba(255,255,255,0.10);
    
} 
td{
    color: #fff;
    font-size: large;
}
th{
    font-size: 25px;
    height: 70px;
    color: #093a96;
   
}
table {
    align-items: center;
    margin-right: auto; 
    border-spacing: 10px;
    width: 95%;
}
.box1{
    display: flex;
    align-items: center;
    padding-left: 300px;
    padding-right: 0px;
    padding-top: 40px;
    flex-direction: column;
    
} 
/* heading */
.heading{
    padding-top: 47%;
    padding-bottom: 0;
    padding-left: 130px;
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    color: #fff;
}
.heading1{
    padding-top: 30%;
    padding-left: 130px;
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    color: #fff;

}
/* update button */
.btn1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 40px;
    outline: none;
    width: 100%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
}

.btn1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}

/* save-btn */
.save-btn{
    padding-right: 200px;
    padding-left: 30px;
    padding-top: 35px;
    width: 30%;
}

/* dashboard css */
.box{
    display: flex;
align-items: center;
padding-left: 300px;
padding-right: 0px;
padding-top: 40px;
flex-direction: column;

}

h1{
    font-size: 70px;
    /* margin:0;
    padding:0; */
    text-align:center;
    font-family:'arial';
    position:absolute;
    color:#fff;
    top:50%;
    left:55%;
    right: 0px;
    color: white;
    transform:translateX(-50%)translateY(-50%);
    color:a #fff;

}
 <style>
      body{
    background-image: url("1.jpg") !important;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    
}

.alert {
  padding: 10px;
  background-color: blue;
  color: white;
  border-radius: 10px
}
.alert1 {
  padding: 10px;
  background-color: red;
  color: white;
  border-radius: 10px
}

.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 20px;
  line-height: 10px;
  cursor: pointer;
  transition: 0.3s;
}
        .top{
            
             padding-top: 90px;
            padding-bottom: 20px;
        }
        .box{
         width: 700px;	
         margin: auto;
         margin-top: 10px;
         min-height: 0vh;
              }
      
        .submit1{
            border: none;
            border-radius: 30px;
            font-size: 15px;
            height: 45px;
            outline: none;
            width: 700px;
            color: black;
            background: rgba(255,255,255,0.7);
            cursor: pointer;
            transition: .3s ;
            
            margin-right:30px;
            
            margin-left:430px ;
            margin-top: 20px; 
        }
        .submit1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
input[type="radio" i] {
        background-color: initial;
        cursor: default;
        appearance: auto;
        box-sizing: border-box;
        margin: 3px 3px 0px 5px;
        font-size: 50px;
        margin-right:0px;
        margin-top: 15px;
        border: initial;
}
.container {
    width: 50%;
    float: left;
}

.radio-inline{
}
.box2{
width:40%;
margin: auto;
}
label{
margin-right:15px;
}
.radio-inline1{
  margin-right: 150px;
}

@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');

*{
    font-family: 'Heebo', sans-serif;

    margin: 0;
    padding: 0;
    /* it is use to remove the padding of nav bar or over all extra padding */
}

.nav{
    background: rgba(255,255,255,0.10);
    height:30px; 
    margin: 0px auto;
    height: 50px;
    padding-top: 21px;
    padding-bottom: 0px;
    line-height: 1;
    padding-left: 50px;
    font-size: large;
    font-weight: 400;
    position: fixed;
    width: 100%;
    top: 0;
}
.box{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 90vh;
}
.container{
    width: 350px;
    display: flex;
    flex-direction: column;
    padding: 0 15px 0 15px;
    padding-right: 20px;
    
}
.container1{
    width: 350px;
    display: flex;
    flex-direction: column;
    padding: 0 15px 0 15px;
}
span{
    color: #fff;
    font-size: small;
    display: flex;
    justify-content: center;
    padding: 10px 0 10px 0;
}
header{
    color: #fff;
    font-size: 30px;
    display: flex;
    
    justify-content: center;
    padding: 10px 0 10px 0;
}

.input-field .input{
    height: 45px;
    width: 90%;
    border: none;
    border-radius: 30px;
    color: #fff;
    font-size: 15px;
    padding: 0 0 0 45px;
    background: rgba(255,255,255,0.1);
    outline: none;
}
input[type="date"]::-webkit-inner-spin-button,
input[type="date"]::-webkit-calendar-picker-indicator {
    display: none;
    -webkit-appearance: none;
}
i{
    position: relative;
    top: -33px;
    left: 17px;
    color: #fff;
    margin-right: 20px;
    height: 2px;
    font-size: 16px;
}
#ii{
    font-size: 5px;
}

::-webkit-input-placeholder{
    color: #fff;
}
.submit{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 100%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
}
.submit:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.btn{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 100%;
    color: black;
    background: rgba(244, 50, 50, 0.7);
    cursor: pointer;
    transition: .3s ;
}
.btn:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.btn1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 40px;
    outline: none;
    width: 70%;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
}

.btn1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}

.two-col{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    color: #fff;
    font-size: small;
    margin-top: 10px;
}
.one{
    display: flex;
}
label a{
    text-decoration: none;
    color: #fff;
}
#toggle-password ,  #toggle-password1,#toggle-password2,#toggle-password4{
    float: right;
}
th, td {  
    padding: 10px 10px 10px 10px;  
    text-align: center;
    background: rgba(255,255,255,0.10);
    
} 
td{
    color: #fff;
    font-size: large;
}
th{
    font-size: 25px;
    height: 70px;
    color: #093a96;
   
}
.box1{
    display: flex;
    align-items: center;
    padding-left: 400px;
    padding-right: 400px;
padding-top: 100px;
    
}  
table {
      
      align-items: center;
      margin-right: auto; 
      border-spacing: 10px;
      width: 200%;
} 
 li{
    display: block;
    display:inline;
    color: white;
    padding: 14px 12px;
    text-decoration: none;
  }
footer{
    background: rgba(0, 255, 255, 0.1); 
    height: 100px;
    width: 100%;
}

    
</style>

<meta charset="ISO-8859-1">

<title>Admin | Dashboard</title>

</head>
<body>
    <div class="header">
        <div class="side-nav">
            <h2 style="color: aliceblue;">count : 000</h2>
        </div>
        <ul class="nav-link">
             <li><a href="admindashboard.jsp" target="_self"><i class='bx bx-home-alt'></i><p>Dashboard</p></a></li>
            <li><a href="registration.jsp" target="_self"><i class='bx bx-registered'></i><p>Registrations</p></a></li>
            <li><a href="cnadidate.jsp" target="_self"><i class='bx bx-user-circle'></i></i><p>Candidate</p></a></li>
            <li><a href="#" target="_self"><i class='bx bx-user-circle'></i></i><p>Candidate</p></a></li>
            <li><a href="live-user.jsp" target="_self"><i class='bx bx-user-check'></i></i><p>Live users</p></a></li>
            <li><a href="partys.jsp" target="_self"><i class='bx bx-group'></i><p>Party's</p></a></li>
            <li><a href="partys.jsp" target="_self"><i class='bx bx-group'></i><p>Party's</p></a></li>
            <li><a href="result.jsp"><i class='bx bx-party'></i><p>Result</p></a></li> 
            <div class="active"></div>       
        </ul>
    </div>
    

    

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