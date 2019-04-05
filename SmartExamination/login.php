<?php

$json = file_get_contents('php://input');
$obj = json_decode($json);

#echo $obj->{'Subject'};
#echo $obj->{'NOQ'};


if ($_SERVER["REQUEST_METHOD"] == "POST") {

 


 $email = $obj->{'Email'};
 $password = $obj->{'Password'};
 $succesful=FALSE;
 $Passwordstatus="incorrect";
 $Emailregisterd=FALSE;
 $Emailverificationstatus="No";
 $conn=mysqli_connect("localhost","root","","smartexamination") or die('error while connecting...');    
 $password=md5($password);
 



$query1=mysqli_query($conn," SELECT * FROM `students` WHERE email='$email'");

 while($row1=mysqli_fetch_array($query1,MYSQLI_BOTH)){;

    //echo  array($row1);
    //echo     $password;
    $Emailverificationstatus=$row1["otpverifed"];
    if(strcmp($row1["password"], $password)==0)
        { 
         $succesful=TRUE;
         $Passwordstatus="correct";
        date_default_timezone_set("Asia/Kolkata");
        $LastLoginTime=date('y-m-d h:i:s');
        $sql = "UPDATE students SET Last_Login_Time='$LastLoginTime' WHERE email='$email'";
        mysqli_query($conn, $sql);
    			
		}
    else
        { 
           $Passwordstatus="incorrect";  
        } 
       
            //$s=array($row1[0]=>$paper);
    $Emailregisterd=TRUE;
}




$response=array('succesful' => $succesful, 'passwordststus'=>$Passwordstatus,'Emailregisterd'=>$Emailregisterd,'Emailverificationstatus'=>$Emailverificationstatus );
echo json_encode($response);
//echo "Email is not registerd";



/*if (($row1=mysqli_fetch_array($query1,MYSQLI_BOTH)) {
		echo "string";
		# code...
	}
*/

}
?> 