<?php
#ini_set("enable_dl","On");
#include('wiringpi.php');

$got=0;
wiringPiSetup();
$fd = serialOpen("/dev/ttyS1",9600);


for (;;){
    if (serialDataAvail($fd))   //recive message
	{
    	echo serialGetchar($fd);
	$got = 1;
	}
   if($got==1){
	serialPrintf($fd,"got it");	//sé//sent message
	serialPutchar($fd,"49"); 	//sent message with hex
	$got=0;
	}

    usleep(5000);
}


?>
