<?php
include 'connection.php';
extract($_POST);

$req=mysqli_query($con,"INSERT INTO user (nom,prenom,datedenaissance,tel,genre)
VALUES('$nom','$prenom','$naissance','$Numero','$genre')");

?>