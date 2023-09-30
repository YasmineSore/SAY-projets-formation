<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire d'informations</title>
    <link rel="stylesheet" href="./index.css">
    <link rel="stylesheet" href="candi.css">
</head>
<body>
    <?php include'connexion.php';?>
    <div class="container1">
        <h1>Inscription</h1>
        <form action="traitement.php" method="post">
            <label for="nom">Nom:</label>
            <input type="text"  name="nom" required>
            <label for="prenom">Prénom(s):</label>
            <input type="text"  name="prenom" required>

            <label for="dateNaissance">Date de naissance:</label>
            <input type="date" name="datedenaissance" required>

            <label for="telephone">Téléphone:</label>
            <input type="tel"  name="tel" required>
            

            <label for="genre">genre:</label>
            <select  name="genre" required>
                <option value=""></option>
                <option value="F">FEMME</option>
                <option value="H">HOMME</option>
            </select>
            
            <label for="email">Email:</label>
            <input type="email"  name="email" required>

            <label for="pseudo">pseudo:</label>
            <input type="text"  name="pseudo" required>

            <label for="password">mot de passe:</label>
            <input type="password"  name="motdepasse" required>
            <input type="submit" value="S'inscrire">
            
        </form>
    </div>
    <!-- footer section -->
  <!-- footer section -->
</body>
</html>
