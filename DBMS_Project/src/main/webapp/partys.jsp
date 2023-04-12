<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.adminoperations"%>
<html lang="en">
<head>
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
    width: 0%;
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
    padding-top: 3%;
    padding-bottom: 0;
    padding-left: 130px;
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    color: #fff;
}
.heading1{
    padding-top: 3%;
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

.btn2{
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

.btn2:hover{
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
    top:50%;
    left:55%;
    right: 0px;
    transform:translateX(-50%)translateY(-50%);
    color:a liceblue;

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
            <li><a href="live-user.jsp" target="_self"><i class='bx bx-user-check'></i></i><p>Live users</p></a></li>
            <li><a href="partys.jsp" target="_self"><i class='bx bx-group'></i><p>Party's</p></a></li>
            <li><a href="result.jsp"><i class='bx bx-party'></i><p>Result</p></a></li> 
            <div class="active"></div>       
        </ul>
    </div>


<div class="heading1">Party's</div>
    

    <div class="box1">
                         
    <table>
        
        <tr>
            <th>sr</th>
            <th>party id </th> 
            <th>party name</th>
            <th>party leader</th>
            <th>party type</th>
			<th>Action</th>
            <th>Action</th>
            
            
            
        </tr>
                <%
        	adminoperations aop=new adminoperations();
        	ResultSet rs=aop.displayParties();
        	int cnt=1;
        	while(rs.next())
        	{	
        %>
        
        <tr>
            <td><%=cnt%></td>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            
            <td><input type="button" value="update" class="btn1"></td>
             <td><a href="deleteparty?party_id=<%=rs.getString(1)%>"><input type="button" value="remove" class="btn2"></a></td>
 
        </tr>
        <%
        	}
            %>
       
    </table> 
    
    <div class="save-btn"><a href="partyform.jsp"><input type="submit" value="Add party" class="btn1"></a></div>
</div>
