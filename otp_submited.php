<?php
    //include ('include/db.php');
    session_start();
    $otp = $_SESSION['otp'];
    if(isset($_POST['submit'])){
        $get_otp = $_POST['otp'];

        if($get_otp == $otp){
            echo "<script>alert('Otp submited please login')</script>";
            echo "<script>window.open('checkout.php','_self')</script>";
        }
        else{
            echo "<script>alert('otp invalid , please inter valid otp code')</script>";
            echo "<script>window.open('otp_submit.php','_self')</script>";
        }
    }
?>