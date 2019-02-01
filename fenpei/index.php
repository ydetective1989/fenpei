<?php
require('./config.php');
setcookie('user','qiuwei',time()+36000);
if(isset($_COOKIE['user']) && !empty($_COOKIE['user'])){
    if(isset($_POST) && !empty($_POST)){
        $username = $_POST['username'];
        $level = $_POST['level'];
        $number = $_POST['number'];
        $department = $_POST['department'];
        $subdate = time();
        $submen = $_COOKIE['user'];
        $query = "SELECT id,hash  FROM hashmap WHERE isused = 0 ";
        $row = $db->getRow($query);
        if($row) {
            $hashid = $row['id'];
            $hash = $row['hash'];
            $arr = [
                'username' => $username,
                'userlevel' => $level,
                'number' => $number,
                'department' => $department,
                'subdate' => $subdate,
                'submen' => $submen,
                'hashid' => $hashid
            ];
            $db->insert('userdata',$arr);

            $ha = [
                'isused' => 1
            ];
            $where = [
                'id' => $hashid
            ];
            $db->update('hashmap',$ha,$where);
            echo  "$hash";
        }else{
            echo  0;
        }

    }
}

?>