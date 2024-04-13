<?php
include("connexion.php");
if($_SERVER["REQUEST_METHOD"] == "POST"){
    $nom = $_POST["nom"];
    $prenom = $_POST["prenom"];
    $datenais = $_POST["datenais"];
    $ville = $_POST["ville"];
    $sexe = $_POST["sexe"];
    $filiere = $_POST["filiere"];

    $sql ="INSERT INTO CANDIDAT (Nom, Prenom, Datnais, Ville, Sexe, codfil) VALUES('$nom','$prenom','$datenais','$ville','$sexe','$filiere')";
    
    if(mysqli_query($connexion, $sql)){

        echo "Enregistrement effectué avec succès";
    }else{
        echo "Erreur lors de l'enregistrement: " .mysqli_error($connexion);
    }
}
?>