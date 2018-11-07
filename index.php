<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<title>Exportar Banco de Dados</title>
	</head>
	<body>
		<h1>Exportar base de dados</h1>
		<?php
		if(isset($_SESSION['msg'])){
			echo "<p>".$_SESSION['msg']."</p>";
			unset($_SESSION['msg']);
		}
		?>
		<form method="POST" action="processa.php" enctype="multipart/form-data">
			<label>Servidor: </label>
			<input type="text" name="servidor" placeholder="Nome do servidor"><br><br>
			
			<label>Usuário: </label>
			<input type="text" name="usuario" placeholder="Nome do usuário"><br><br>
			
			<label>Senha: </label>
			<input type="password" name="senha" placeholder="Senha da base de dados"><br><br>
			
			<label>Base de Dados: </label>
			<input type="text" name="dbname" placeholder="Nome da base de dados"><br><br>
			
			<input type="submit" value="Exportar">
		</form>
	</body>
</html>