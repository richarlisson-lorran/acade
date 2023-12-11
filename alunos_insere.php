<?php

$nome = $_POST['nome'];
$especialidade = $_POST['especilidade'];
$horario = $_POST['horario'];

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

$consulta = "INSERT INTO `instrutores` (`id`, `especialidade`, `horario`, `nome`) VALUES (NULL, '". $nome ."', '". $especialidade ."', '". $horario ."');";
$result = $conn->query($consulta);
$conn->close();


// Redireciona para INDEX
header('Location: http://localhost/academia/alunos.php');


?>