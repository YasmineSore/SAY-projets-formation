<?php
$server="localhost";
$utilisateur="root";
$motdepasse="";
$database="formulaire";
$con = mysqli_connect($server,$utilisateur,$motdepasse,$database);

    if(mysqli_connect_errno()) {
     echo "Faibled to connect to MYSQL: " .mysqli_connect_error() ; 
    }else { echo 'connexion réussi';}
?> 