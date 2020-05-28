<?php
#ini_set("enable_dl","On");
#include('wiringpi.php');

$got=0;
wiringPiSetup();
$fd = serialOpen("/dev/ttyS1",9600);
$message = "";

for (;;){
    if (serialDataAvail($fd))   //recive message
        {
        //echo 
        $message .= bin2hex(chr(serialGetchar($fd)));  //got by hex
        $got = 1;
        }
   if($got==1){
        #serialPrintf($fd,"got it");    //sent message
        serialPuts($fd,hex2bin($message));      //sent message with hex
        #serialPutchar($fd,'0x5a'); //sent message with hex
        $got=0;
        echo "$message \n";
        $message = "";
        }

    usleep(5000);
}


?>