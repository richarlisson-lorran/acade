<?php

$nome = $_POST['modalidade'];

//echo $nome;


// Salva no banco de dados
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

$consulta = "INSERT INTO `modalidade` (`id`, `modalidade`) VALUES (NULL, '". $nome ."');";
$result = $conn->query($consulta);
$conn->close();


// Redireciona para INDEX
header('Location: http://localhost/academia/modalidade.php');


?>