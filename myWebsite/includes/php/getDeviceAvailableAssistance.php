<?php
header("Access-Control-Allow-Origin: *");
//define('MYSQL_BOTH',MYSQLI_BOTH);
//define('MYSQL_NUM',MYSQLI_NUM);
//define('MYSQL_ASSOC',MYSQLI_ASSOC);

$id = intval($_GET['id']);

$mysqli = new mysqli("localhost", "root", "", "timdb");

if (mysqli_connect_errno()) {
    echo "Error to connect to DBMS: ".mysqli_connect_error();
    exit();
}
else {
    $query = " SELECT * FROM prodotti, assistenza, prodottoassistenza
               WHERE prodotti.idprodotto = '".$id."' AND prodotti.idprodotto = prodottoassistenza.idprodotto AND assistenza.idassistenza = prodottoassistenza.idassistenza";

    $result = $mysqli->query($query);

    if($result->num_rows >0)
    {
        $myArray = array();
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);	
        }
        echo json_encode($myArray);
    }

    $result->close();    
    $mysqli->close();
}
?>