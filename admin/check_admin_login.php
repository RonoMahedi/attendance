<?php

include('database_connection.php');

session_start();

$admin_user_name ='';
$admin_password ='';
$error_admin_user_name = '';
$error_admin_password = '';
$error ='';

if (empty($_POST["admin_user_name"])) {
  $error_admin_user_name='Username is required';
  $error++;
}else{
  $admin_user_name=$_POST["admin_user_name"];

}

if (empty($_POST["admin_password"])) {
  $error_admin_password='Password is required';
  $error++;
}else{
  $admin_password=$_POST["admin_password"];

}

if ($error==0) {

             $sql = "select * from tbl_admin where admin_user_name= '$admin_user_name' AND  admin_password = '$admin_password'";
             $re = mysqli_query($conn,$sql);

             if($re){

          	   if(mysqli_num_rows($re) > 0  ){

                 echo "
                 <script>
                 alert('You are Successfully Loged In');
                 window.location.href='index.php';

                 </script>
                 ";

               }else{
                 echo "
                 <script>
                 alert('You are not registered by admin');

                 </script>
                 ";
               }
             }
             else{
               echo "
               <script>
               alert('Database Error');

               </script>

               ";

             }

          }


 ?>
