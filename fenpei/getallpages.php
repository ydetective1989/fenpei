<?php
require('config.php');
if(isset($_COOKIE['loginhash']) && !empty($_COOKIE['loginhash'])) {
    $userid = $_COOKIE['userid'];
    $query = "SELECT count(id) as num FROM userdata WHERE submen = '$userid'";
    $num = $db -> getRow($query);
    echo $num['num'];
}
?>