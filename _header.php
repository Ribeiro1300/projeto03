<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo $T['templateCSS'] ?>">
    <link rel="icon" href="<?php echo $T['favicon'] ?>">

<?php // Usando ícones do FontAwesome ?>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<?php
// Carrega CSS da página dinamicamente
if ($T['pageCSS'] != '') echo "\t<link rel=\"stylesheet\" href=\"{$T['pageCSS']}\">";
?>

<?php // Tag <title> dinâmica ?>
    <title><?php echo $T['siteName'] ?> .:. <?php echo $T['pageTitle'] ?></title>
</head>

<body>

    <a id="top"></a>

    <div class="wrap">

        <!-- Cabeçalho -->
        <header>
            <a href="#"><img src="img/logo02.png" alt="Intranet"></a>
            <h1><?php echo $T['siteName'] ?><small><?php echo $T['siteSlogan'] ?></small></h1>
        </header>

        <!-- Menu principal -->
        <nav>
            <a href="index.php"><i class="fas fa-fw fa-home"></i> <span>Início</span></a>
            <a href="#"><i class="fas fa-fw fa-newspaper"></i> <span>Protocolos</span></a>
            <a href="#"><i class="fas fa-fw fa-comments"></i> <span>Contatos</span></a>
        </nav>

        <!-- Corpo da página -->
        <main>