<?php
session_start();
ob_start();
//Receber os dados do formulário
$servidor = $_POST['servidor'];
$usuario = $_POST['usuario'];
$senha = $_POST['senha'];
$dbname = $_POST['dbname'];

//Criar a conexao com BD
$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

//Incluir o arquivo que gerar o backup
include_once("gerar_backup.php");

header("Location: index.php");


?>