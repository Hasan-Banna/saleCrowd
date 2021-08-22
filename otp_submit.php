<?php 

$active='Home';
include("includes/header.php");

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sale crowd</title>
    <link href="styles/style.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css" />
</head>
<body>

<?php
//session_start();
//$otp = $_SESSION['otp'];
//echo $otp;
?>

<div class="container">
    <div class="otp">
        <center>
            <form action="otp_submited.php" method="post">
            <input class="otp_input" name="otp" type="text" placeholder="enter otp">
        </center>

    </div>
    <div class="otp">
        <center>
            <button class="btn btn-primary" type="submit" name="submit">submit</button>
        </center>
        
    </div>

</form>
</div>
<div>
<?php 
    
    include("includes/footer.php");
    
    ?>
</div>
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
</body>
</html>