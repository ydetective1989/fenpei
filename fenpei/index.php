<?php
require('./config.php');
if(isset($_COOKIE['userid']) && !empty($_COOKIE['userid'])){
    if(isset($_POST) && !empty($_POST)){
        $username = $_POST['username'];
        $level = $_POST['level'];
        $number = $_POST['number'];
        $department = $_POST['department'];
        $subdate = time();
        $submen = $_COOKIE['userid'];
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