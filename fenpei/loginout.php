<?php
    if(isset($_COOKIE['userid']) && !empty($_COOKIE['userid'])) {
        setcookie('userid',time()-1);
        echo 1;
    }


?>