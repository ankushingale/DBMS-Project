
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.useroperations"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
    <link rel="stylesheet" href="css/voting.css">
    <style type="text/css">
    
@import url('https://fonts.googleapis.com/css2?family=Heebo:wght@300&display=swap');

*{
    font-family: 'Heebo', sans-serif;

    margin: 0;
    padding: 0;
    /* it is use to remove the padding of nav bar or over all extra padding*/
}
/*hi*/
body{
    background-color:cadetblue;

    /* background-image: url("1.jpg") !important;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat; */
    
}

.submit{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 171px;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
    margin-left:0px;
    padding-right:0px;
 
}
.submit:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.submit1{
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 130px;
    color: black;
    background: rgba(255,255,255,0.7);
    cursor: pointer;
    transition: .3s ;
    padding-right:10px;
    padding-left:0px;
 
}
.submit1:hover{
    box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
}
.btncon{
  float:right;
  justify-content: space-between;
 display:flex;

  
}
.btncon1{
padding-right:20px;
margin-right:0px;
}
.btncon2{
padding-left:0px;
}
table {
      align-items: center;
      margin-right: auto; 
      border-spacing: 10px;
      border-collapse: separate;
      margin-top: 100px;
      width: 240%;
} 
.btn {
    border: none;
    border-radius: 30px;
    font-size: 15px;
    height: 45px;
    outline: none;
    width: 100%;
    color: rgb(232, 222, 222);
    background: rgba(244, 50, 50, 0.7);
    cursor: pointer;
    transition: .3s;
}

    </style>

</head>
<body>
     
    <header>
 
        <img class="logo" src="./images/logo.svg" alt="">
 
        <nav>
            <!-- <ul class="nav__links">
                <li><a href="#">Home</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Project</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Music</a></li>
            </ul> -->
            
             <!-- <a href="login.jsp" class="cta" ><button>Admin Login</button></a>
       		 <a href="sign_up.jsp" class="cta" style="margin-left: 50px"><button>user login</button></a>
 -->        </nav>
 
     
       <div class="btncon">
       <div class="btncon1">
        <a href="userdashboard.jsp" class="cta"><input type="submit" class="submit" value="View" id=""></a>
        </div>









       
       </div>


       </div>
    </header>

<%
useroperations us=new useroperations();

	String voter_id=(String)session.getAttribute("voter_id");
	System.out.println("session value is :"+voter_id);
	ResultSet rs1=us.displayData(voter_id);
/* 	String voter_id=rs1.getString(1);

 */	
 	String voter_id1=rs1.getString(1);
	String voter_name=rs1.getString(2);

	System.out.println(rs1.getString(1));

	System.out.println(rs1.getString(2));

 	

	ResultSet rs=us.diaplayCandidateData();
	int cnt=1;
	while(rs.next())
	{
	%>

    <div class="box1">
    
        <div class="container">
        
        
    <table>
        <tbody>
        <tr>
            <th>sr</th>
             <th>name </th>
             <th>party</th>
        
             <th>Do Vote</th>
        </tr>
        <tr>
            <td><%=cnt %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(4) %></td>
            
            <td><a href="votingcontroller?voter_id=<%=rs1.getString(1)%>&voter_name=<%=rs1.getString(2)%>&candidate_name=<%=rs.getString(2)%>&party=<%=rs.getString(4)%>"><input type="button" value="vote" class="btn"></a></td>
        </tr>
      
        </tbody>
    </table> 
</div>
</div>

</div>
  

    <!-- <h1>Welcome to Online Voting System</h1> -->
    
    
      </div>
    </div>



<% 
	
	}
%>

</body>
</html>