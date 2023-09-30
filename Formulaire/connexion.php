<?php
$server="localhost";
$utilisateur="root";
$motdepasse="";
$database="restauranta";
$con= mysqli_connect($server,$utilisateur,$motdepasse,$database);

if(mysqli_connect_errno () ) {
    echo " failed to connect to MYSQL: " . mysqli_connect_error();
}else{
   echo 'connexion réussi'; 
}

?>