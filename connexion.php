<?php
$serveur = "localhost";
$utilisateur = "root";
$motdepasse = "";
$base = "exam_2017";

$connexion = mysqli_connect($serveur, $utilisateur, $motdepasse, $base);

if (!$connexion) {
    die("La connexion à la base de données a échoué: " . mysqli_connect_error());
}
?>
