<?php

 $connection= mysqli_connect('localhost','root','','loginlogin');
    if(!$connection){
    
        die("database connection failed");
            }
    else{ echo "database connected"; }
?>
<?php
 if(isset($_POST['submit'])){
                   $username = $_POST['username'];
                   $username = mysqli_real_escape_string($connection,$username);
                   $query= "SELECT*FROM users WHERE username='$username'";
                   $result= mysqli_query($connection,$query);
       if($row = mysqli_num_rows($result)>0){
              $connection= mysqli_connect('localhost','root','','loginlogin');
      
            echo "</br>";
            echo "succesfully loged in"; 
?>
 <!DOCTYPE html>
    <html lang="en">
    <head>
          <title>YOUR SCHEDULE</title>
    </head>
    <body>
    <table border="3">
        <tr>
        <th>Sir no</th>
        <th>Events</th>
        <th>Date</th>
        <th>Start time</th>
        <th>End time</th>
     </tr>

    

<?php 

   $connection= mysqli_connect('localhost','root','','loginlogin');
    if(!$connection){
       die("database connection failed");
        }
    else{ echo "LOGED IN"; }
?>
<?php 
            $query = "SELECT * FROM $username";
            $data = mysqli_query($connection,$query);
            $total = mysqli_num_rows($data);
            

   if($total!=0){
     
        while($result= mysqli_fetch_assoc($data))
        {  $dated=$result['date'];
            $da=explode('-',$dated);
            $day=$da[2];
            $month=$da[1];
            $year=$da[0];
            $dated=$day."/".$month."/".$year;
        echo "
        <tr>
             <td>".$result['id']."</td>
             <td>".$result['Event']."</td>
             <td>".$dated."</td>
             <td>".$result['Start']."</td>
             <td>".$result['End']."</td>
       </tr>";
         $id=$result['id'];
         $start=$result['Start'];
         echo "<br>";
         if($start<$end){
             echo $result['Event']." --is conflicting";
         }
         else{
             echo $result['Event']." --non conflicting ";
         }
         $end=$result['End'];
        
         
         
         
         }
         
        }   
   else{
       echo "No record found";
        }
 


   
?>

    </table>
    </body>
    </html>
    


<?php

   }
   else{
       echo "</br>";
       echo "No user found";
   }
    
 }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="col-sm-6">
            <form action="comp.php" method="post">
                <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" class="form-control" placeholder="enter your username">
</div>
<div align="center">
<input class="btn btn-primary" type="submit" name="submit" value="login">
</div>
</form>
    
</body>
</html>

