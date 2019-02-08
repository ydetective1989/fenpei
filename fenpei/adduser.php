<?php
require('config.php');
if(isset($_POST) && !empty($_POST)){
    if(isset($_COOKIE['userid']) && !empty($_COOKIE['userid'])){
        $name = $_POST['name'];
        $password = md5($_POST['password']);
        $isadmin = $_POST['isadmin'];
        $query = "SELECT name FROM user WHERE name = '$name'";
        $row = $db -> getRow($query);
        if($row){
            echo 0;
            return;
        }
        $arr = [
            'name' => $name,
            'password' => $password,
            'isadmin' => $isadmin
        ];
        $db -> insert('user',$arr);
        echo 1;
    }
}


?>