<?php
wiringPiSetup();
pinmode(8, 1);


for (;;){
    digitalwrite (8, 1);
    sleep(2);
    digitalwrite (8, 0);
    sleep(2);
}
?>
