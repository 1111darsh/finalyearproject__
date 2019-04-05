
<?php

$json = file_get_contents('php://input');
$obj = json_decode($json);

#echo $obj->{'Subject'};
#echo $obj->{'NOQ'};


if ($_SERVER["REQUEST_METHOD"] == "POST") {

$Subjectarry=$obj->{'Subject'};
#$NOQ=5;

$NOQ=$obj->{'NOQ'};


$subjectvsNOQ=(int)((int)$NOQ/sizeof($Subjectarry));
$subjectvsNOQp1=$subjectvsNOQ+1;
$morequesrion=(int)((int)$NOQ%sizeof($Subjectarry));


for($i=0;$i<sizeof($Subjectarry);$i++){
	
	if($morequesrion!=0)
	{
	$morequesrion= $morequesrion - 1;
	$NOQ=$subjectvsNOQp1;	
	
	}
	else{
		$NOQ=$subjectvsNOQ;
	}
	$Subject = $Subjectarry[$i];
	echo $Subject."   ".($NOQ)."\n";
}


}
else
{
	echo "There is no input";
}
?>


