<?php

$nome = $_POST['nome'];
$idade = $_POST['idade'];
$modalidade = $_POST['modalidade'];
$s_mens = $_POST['status_mensalidade'];

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

$consulta = "INSERT INTO `atletas` (`id`, `nome`, `idade`, `modalidade`, `status_mensalidade`) VALUES (NULL, '" . $nome . "', '" . $idade . "', '" . $modalidade . "', '" . $s_mens . "');";
$result = $conn->query($consulta);
$conn->close();


// Redireciona para INDEX
header('Location: http://localhost/academia/cursos.php');


?>