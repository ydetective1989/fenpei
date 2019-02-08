<?php
require('config.php');
if(isset($_COOKIE['userid']) && !empty($_COOKIE['userid'])){
    $userid = $_COOKIE['userid'];
    $query = "SELECT isadmin FROM user WHERE id = '$userid' AND isadmin = 1";
    $row = $db -> getRow($query);
    if($row) {
        echo 1;
    }else{
        echo 0;
    }
}

?>