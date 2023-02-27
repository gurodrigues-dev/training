<?php

function getConnection(){
    $host     = 'localhost';
    $database = 'video';
    $user     = 'root';
    $password = '';

    try {
        $conn = new PDO('mysql:host='.$host., ';dbname='.$database, $user, $password);
        return array('connection'=> $conn, 'message' => 'Sucess');
    } catch(PDOException $e) {
        return array('connection'=> null, 'message' => 'Ocorreu o seguinte erro <br>'
            . $e -> getMessage());
    }
}

?>