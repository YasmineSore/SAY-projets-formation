<?php
include'connexion.php';
if(isset($_POST['Pseudo']) AND isset($_POST['Mdp']))
{
    $Pseudo=$_POST['Pseudo'];
    $Passe =$_POST['Mdp'];
    extract($_POST);
    $requette=mysqli_query($con,"SELECT* FROM user
    WHERE Pseudo='$Pseudo' AND motdepasse='$Mdp'");
    $user=mysqli_fetch_assoc($requette);
    
    if(mysqli_num_rows($requette)>0){
        session_start();
        $_SESSION['connexion']= true;
        $_SESSION['id']= $user['iduser'];
        header("Location:acceuil.php");
    }else{
        header("Location:index.php");
    }

}
?>