<?php
// Inclure le header en premier
require_once 'includes/header.php';

// Détruire la session(déconnexion)
session_start();
session_destroy();

// Rediriger vers la page d'accueil
header('Location: index.php');
exit();
?> 