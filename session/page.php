<?php
include 'connexion.php';
session_start();
if(!isset($_SESSION['connexion'])|| $_SESSION ['connexion']!==true){
    header('Location:index.php');
}
$user=$_SESSION['id'];
$select=mysqli_query($con,"SELECT * FROM user WHERE iduser");
$recuper=mysqli_fetch_assoc($select);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Bienvenu <?php echo $Pseudo; ?></h1>
    <p>Sur votre page suivante</p>
    <a href="acceuil.php">visiter la page précédente</a><br>
    <a href="Deconnexion.php">Deconnexion</a>
</body>
</html>