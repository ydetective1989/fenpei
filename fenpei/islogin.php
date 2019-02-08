<?php
require('./config.php');
    if(isset($_COOKIE['userid']) && !empty($_COOKIE['userid'])) {
        $userid = $_COOKIE['userid'];
        $loginhash = $_COOKIE['loginhash'];
        $query = "SELECT name FROM user WHERE id = '$userid' AND loginhash = '$loginhash' ";
        $row = $db -> getRow($query);
        if($row){
            echo 1;
        }else {
            echo 0;
        }
    }else{
        echo 0;
    }
?>