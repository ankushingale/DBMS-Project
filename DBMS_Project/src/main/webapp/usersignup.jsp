
 <!DOCTYPE html>
 <html lang="en">
 <head>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="css/style.css">
     <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
     
 
     <title>Login</title>
     <script>
         function togglePassword2() {
          var passwordField = document.getElementById("input-field2");
          var toggleIcon = document.getElementById("toggle-password2");
          if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleIcon.classList.remove("fa-eye-slash");
            toggleIcon.classList.add("fa-eye");
          } else {
            passwordField.type = "password";
            toggleIcon.classList.remove("fa-eye");
            toggleIcon.classList.add("fa-eye-slash");
          }
        }
        function togglePassword4() {
          var passwordField = document.getElementById("input-field4");
          var toggleIcon = document.getElementById("toggle-password4");
          if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleIcon.classList.remove("fa-eye-slash");
            toggleIcon.classList.add("fa-eye");
          } else {
            passwordField.type = "password";
            toggleIcon.classList.remove("fa-eye");
            toggleIcon.classList.add("fa-eye-slash");
          }
        }
      </script>
      <style>
      body{
    background-image: url("1.jpg") !important;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    background-repeat: no-repeat;
    
}
        .top{
            
            padding-top: 120px;
            padding-bottom: 20px;
        }
        .box{
            padding-bottom: 0px ;
            padding-top: 20px;
            min-height: 0vh;
        }
        .container{
            margin-left: 20px;
        }
        .submit1{
            border: none;
            border-radius: 30px;
            font-size: 15px;
            height: 45px;
            outline: none;
            width: 760px;
            color: black;
            background: rgba(255,255,255,0.7);
            cursor: pointer;
            transition: .3s ;
            
            margin-right: 400px;
            margin-left:379px ;
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
      </style> 
 </head>
 <body>
    <form action="">
    <div class="top">
        <span>Have an account?</span>
        <header><b>sign up</b></header>
    </div>

    <div class="box">
        <!-- <div class="top">
            <span>Have an account?</span>
            <header>sign up</header>
        </div> -->
     <div class="container1">
 
       
       
         <div>
        <div class="input-field">
            <input type="text" class="input" placeholder="full name" id="" required>
            <i class='bx bx-envelope'></i>
        </div>

        <div class="input-field">
            <input type="email" class="input" placeholder="email" id="" required>
            <i class='bx bx-envelope'></i>
        </div>

        <div class="input-field">
            <input type="number" class="input" placeholder="Adhar_Card no" id="input-field" required>
            <i class='bx bx-id-card'></i>
        </div>

        
        <div class="input-field">
           <input type="number" class="input" placeholder="phone no" id="input-field1" required>
          <i class='bx bx-mobile-alt'></i> 
       </div>
      
       <div class="input-field">
        <span class="input">        
            <label class="radio-inline">
            <input type="radio" name="optradio" style="padding-left: 200px;">  male<span style="margin-right: 70px;"></span> </label>
          <label class="radio-inline">
            <input type="radio" name="optradio"> female<span style="margin-right:250px;"></span>
          </label>
          
        </span>

        <i class='bx bx-male-female'></i>
        
    </div>
     </div>


     </div>
     <div class="container" style="padding-top: 0px;">
 
     
      
       <div>
      <div class="input-field">
          <input type="text" class="input" placeholder="Username" id="">
          <i class='bx bx-user' ></i>
      </div>

      <div class="input-field">
        <input type="Password" class="input" placeholder="enter Password" id="input-field2" required>
        <i class='bx bx-lock-alt'></i>
        <i class="fa fa-eye-slash" id="toggle-password2" onclick="togglePassword2()" id="ii"></i>
    </div>

      
    <div class="input-field">
        <input type="Password" class="input" placeholder="enter Password" id="input-field4" required>
        <i class='bx bx-lock-alt'></i>
        <i class="fa fa-eye-slash" id="toggle-password4" onclick="togglePassword4()" id="ii"></i>
    </div>

     <div class="input-field">
         <input type="date" class="input" placeholder="conform Password" id="" required>
         <i class='bx bx-calendar'></i>
     </div>
     <div class="input-field">
        <input type="text" class="input" placeholder="address" id="" required>
        <i class='bx bx-home-alt'></i>
    </div>
     </div>
   
   
   
      
   

     </div>
   </div>  
     <div class="input-field1" style="margin: 0;margin-bottom: 1000px;">
     <input type="submit" class="submit1" value="sign up" id="" required>
    </div>
   </form>
     </body>
 </html>