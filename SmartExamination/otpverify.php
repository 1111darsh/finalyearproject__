<?php

$json = file_get_contents('php://input');
$obj = json_decode($json);

#echo $obj->{'Subject'};
#echo $obj->{'NOQ'};


if ($_SERVER["REQUEST_METHOD"] == "POST") {

 

 $email = $obj->{'Email'};
 $OTP = $obj->{'OTP'};
 $succesful=FALSE;

 $conn=mysqli_connect("localhost","root","","smartexamination") or die('error while connecting...');    
 
$query1=mysqli_query($conn," SELECT * FROM `students` WHERE email='$email'");

 while($row1=mysqli_fetch_array($query1,MYSQLI_BOTH)){;

    //echo  array($row1);
    //echo     $password;
     if(strcmp($row1["OTP"], $OTP)==0)
        { $succesful=TRUE;
        $sql = "UPDATE students SET otpverifed='yes' WHERE email='$email'";
        mysqli_query($conn, $sql); 
    			
		}
    else
        { $succesful=FALSE;    } 

    $Emailregisterd=TRUE;
        
            //$s=array($row1[0]=>$paper);

}

$response=array('succesful' => $succesful,'Emailregisterd'=>$Emailregisterd );
echo json_encode($response);

}
?> 