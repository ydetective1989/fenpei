<?php
require('config.php');
        if(isset($_COOKIE['userid']) && !empty($_COOKIE['userid'])){
            $pagenum = isset($_GET['pagenum']) ? $_GET['pagenum']*5 : 0;
            $userid = $_COOKIE['userid'];
            $query = "SELECT u.username , u.userlevel , u.number , u.department , h.hash FROM userdata as u left join hashmap as h on h.id = u.hashid  WHERE  u.submen = '$userid' LIMIT $pagenum , 5";
            $rows = $db -> getRows($query);
            if($rows){
                echo (json_encode($rows));
            }else{
                echo 0;
            }
        }
    

?>