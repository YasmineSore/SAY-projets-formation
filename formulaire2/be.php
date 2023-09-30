<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div>
    
    <form method="post" action= 'traitement.php'> 
        <div>
            <div>
                <label>
                    nom : <input type="text" name="nom" placeholder="Nom">
                </label>
            </div>
            <div>
                <label>
                prenom :<input type="text" name="prenom" placeholder="Prenom">
                </label>
            </div>
            <div>
            <label>
                Date :<input type="date" name="naissance" >
                </label>
            </div>
            <div>
            <label>
                numero :<input type="number" name="Numero">
                </label>
            </div>
            <select name="genre">
            <option value="H">Homme</option>
            <option value="F">Femme</option>
            </select>
            <br>
            <div>
                <button type="submit">ok </button>
            </div>
        </div>
        
    </form>
</div>
          
        
</body>
</html>