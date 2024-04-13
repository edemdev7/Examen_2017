<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des candidats</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Liste des candidats</h1>
        <form action="recherche.php" method="POST">
            <label for="filiere">Filtrer par filière:</label>
            <select id="filiere" name="filiere">
                <option value="">Toutes les filières</option>
                <option value="1">Administration et gestion des entreprises</option>
                <option value="2">Agronomie</option>
                <option value="3">Réseaux Informatiques et Télécommunications</option>
                <option value="4">Systèmes Informatiques et Logiciels</option>
            </select>
            <input type="submit" value="Rechercher">
        </form>

        <?php
        // Inclure le fichier de connexion à la base de données
        include("connexion.php");

        // Construire la requête SQL pour sélectionner les candidats en fonction de la filière sélectionnée
        $sql = "SELECT * FROM  CANDIDAT";
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["filiere"]) && !empty($_POST["filiere"])) {
            $filiere = $_POST["filiere"];
            $sql .= " WHERE CANDIDAT.codfil = '$filiere'";
        }

        // Exécuter la requête SQL
        $result = mysqli_query($connexion, $sql);

        // Vérifier s'il y a des candidats
        if (mysqli_num_rows($result) > 0) {
            // Afficher le tableau des candidats
            echo "<table>
                    <tr>
                        <th>NOM</th>
                        <th>PRENOM</th>
                        <th>DATE DE NAISSANCE</th>
                        <th>VILLE</th>
                        <th>SEXE</th>
                        <th>FILIERE</th>
                    </tr>";
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $row["Nom"] . "</td>";
                echo "<td>" . $row["Prenom"] . "</td>";
                echo "<td>" . $row["Datnais"] . "</td>";
                echo "<td>" . $row["Ville"] . "</td>";
                echo "<td>" . $row["Sexe"] . "</td>";
                echo "<td>" . $row["codfil"] . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            // Si aucun candidat n'est trouvé
            echo "Aucun candidat trouvé";
        }
        ?>
    </div>
</body>
</html>