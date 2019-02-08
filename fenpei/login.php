<?php
require('./config.php');
    if(isset($_POST) && !empty($_POST)) {
        $name = $_POST['name'];
        $password = $_POST['password'];
        $query = " SELECT name,password,id FROM user WHERE name = '$name' ";
        $row = $db -> getRow($query);
        if($row){
            if($row['password'] === md5($password)){
                setcookie('userid',$row['id'],time()+3600);
                $loginhash = md5($name.time());
                setcookie('loginhash',$loginhash,time()+3600);
                $arr = [
                    'loginhash' => $loginhash
                ];
                $where = [
                    'id' => $row['id'] 
                ];
                $db -> update('user',$arr,$where);
                echo 1;
            }
        }  
    }

?>
