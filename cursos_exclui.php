<?php

$id = $_GET['id'];

$servidor = "localhost";
$usuario = "root";
$senha = "";
$banco = "academia";

$conn = new mysqli($servidor, $usuario, $senha, $banco);

if ($conn->connect_error) {
    die("Erro: " . $conn->connect_error);
} else {
    //echo "Conectado com o banco!";
}

$consulta = "DELETE FROM atletas WHERE `atletas`.`id` = " . $id;
$result = $conn->query($consulta);
$conn->close();


// Redireciona para INDEX
header('Location: http://localhost/academia/cursos.php');

?>