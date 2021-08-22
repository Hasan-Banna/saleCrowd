<?php 

    $active='Account';
    include("includes/header.php");

?>
   
   <div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href="index.php">Home</a>
                   </li>
                   <li>
                       Register
                   </li>
               </ul><!-- breadcrumb Finish -->
               
           </div><!-- col-md-12 Finish -->
           
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <div class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <center><!-- center Begin -->
                           
                           <h2> Register a new account </h2>
                           
                       </center><!-- center Finish -->
                       
                       <form action="customer_register.php" method="post" enctype="multipart/form-data"><!-- form Begin -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Name</label>
                               
                               <input type="text" class="form-control" name="c_name" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Email</label>
                               
                               <input type="EMAIL" class="form-control" name="c_email" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Password</label>
                               
                               <input type="password" class="form-control" name="c_pass" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Country</label>
                               
                               <input type="text" class="form-control" name="c_country" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your City</label>
                               
                               <input type="text" class="form-control" name="c_city" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Contact</label>
                               
                               <input type="text" class="form-control" name="c_contact" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Address</label>
                               
                               <input type="text" class="form-control" name="c_address" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Profile Picture</label>
                               
                               <input type="file" class="form-control form-height-custom" name="c_image" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="text-center"><!-- text-center Begin -->
                               
                               <button type="submit" name="register" class="btn btn-primary">
                               
                               <i class="fa fa-user-md"></i> Register
                               
                               </button>
                               
                           </div><!-- text-center Finish -->
                           
                       </form><!-- form Finish -->
                       
                   </div><!-- box-header Finish -->
                   
               </div><!-- box Finish -->
               
           </div><!-- col-md-12 Finish -->
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
   
   <?php 
    
    include("includes/footer.php");
    
    ?>
    
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    
    
</body>
</html>


<?php 

if(isset($_POST['register'])){
    
    $c_name = $_POST['c_name'];
    
    $c_email = $_POST['c_email'];
    
    $c_pass = $_POST['c_pass'];
    
    $c_country = $_POST['c_country'];
    
    $c_city = $_POST['c_city'];
    
    $c_contact = $_POST['c_contact'];
    
    $c_address = $_POST['c_address'];
    
    $c_image = $_FILES['c_image']['name'];
    
    $c_image_tmp = $_FILES['c_image']['tmp_name'];
    
    $c_ip = getRealIpUser();
   

    // $email = test_input($c_email);
    // if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        
    //     echo "<script>alert('Invalid email format')</script>";
    //     die();
    // }
    
    move_uploaded_file($c_image_tmp,"customer/customer_images/$c_image");
    //$digits = 6;
    //$verify_code =  rand(pow(10, $digits-1), pow(10, $digits)-1);

    $check = "select * from customers where customer_email='$c_email'";
    $check = mysqli_query($con,$check);    
    $check_customer = mysqli_num_rows($check);
    if($check_customer <1){
        $insert_customer = "insert into customers (customer_name,customer_email,customer_pass,customer_country,customer_city,customer_contact,customer_address,customer_image,customer_ip, status) values ('$c_name','$c_email','$c_pass','$c_country','$c_city','$c_contact','$c_address','$c_image','$c_ip', 0)";
        
        $run_customer = mysqli_query($con,$insert_customer);
		
		require 'PHPMailer-master/PHPMailerAutoload.php';
        $otp_code = rand(21234,99999);
$mail = new PHPMailer();
  
  //Enable SMTP debugging.
  $mail->SMTPDebug = 0;
  //Set PHPMailer to use SMTP.
  $mail->isSMTP();
  //Set SMTP host name
  $mail->Host = "smtp.gmail.com";
  $mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer' => false,
                        'verify_peer_name' => false,
                        'allow_self_signed' => true
                    )
                );
  //Set this to true if SMTP host requires authentication to send email
  $mail->SMTPAuth = TRUE;
  //Provide username and password
  $mail->Username = "hasanalbanna006@gmail.com";
  $mail->Password = "B01838241314w";
  //If SMTP requires TLS encryption then set it
  $mail->SMTPSecure = "false";
  $mail->Port = 587;
  //Set TCP port to connect to
  
  $mail->From = "hasanalbanna006@gmail.com";
  $mail->FromName = "Sale Crowd";
  
  $mail->addAddress($_POST["c_email"]);
  
  $mail->isHTML(true);
 $mail->addAttachment('lop.jpg', 'lop1.jpg'); //set new name

 
  $mail->Subject = "Verification";
  $mail->Body = "<i>this is your Verification code:</i>" .$otp_code;
  $mail->AltBody = "This is the plain text version of the email content";
  if(!$mail->send())
  {
   echo "Mailer Error: " . $mail->ErrorInfo;
  }
  else
  {
      session_start();
      $_SESSION['otp']= $otp_code;
   //echo "<h1>OTP has been send succesfully in Your email Id please checkout </h1>";
     echo "<script>window.open('otp_submit.php','_self')</script>";


   
        //$last_id = $con->insert_id;
        //$insert_customer_code = "insert into customer_verify (customer_id,verify_code) values ('$last_id','$verify_code')";        
        //$run_customer_code = mysqli_query($con,$insert_customer_code);

        //if($run_customer){
           // $to      = $c_email;
            //$subject = 'the subject';
            //$message = 'Your varification code :'.$verify_code;
            //$headers = 'From: naymulmawla@gmail.com' . "\r\n" .
             //   'X-Mailer: PHP/' . phpversion();

          //  mail($to, $subject, $message, $headers);
        }
       // $sel_cart = "select * from cart where ip_add='$c_ip'";
        
       /// $run_cart = mysqli_query($con,$sel_cart);
        
       // $check_cart = mysqli_num_rows($run_cart);
        
       // if($check_cart>0){
            
            /// If register have items in cart ///
            
           // $_SESSION['customer_email']=$c_email;
            
           // echo "<script>alert('You have been Registered Sucessfully')</script>";
            
           // echo "<script>window.open('checkout.php','_self')</script>";
            
       // }//else{
            
            /// If register without items in cart ///
            
           // $_SESSION['customer_email']=$c_email;
            
           // echo "<script>alert('You have been Registered Sucessfully')</script>";
            
           // echo "<script>window.open('index.php','_self')</script>";
            
        }
   // }//else{
        //echo "<script>alert('Already Registered this email')</script>";
            
        //echo "<script>window.open('index.php','_self')</script>";
   // }
    
}

?>