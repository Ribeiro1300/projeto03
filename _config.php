<?php
/************************/
/* Configuração do Site */
/************************/

// PHP em UTF-8
header('Content-Type: text/html; charset=utf-8');

// Conexão com MySQL

if($_SERVER['SERVER_NAME'] == 'localhost')
{
    // Estou no XAMP
    $server = 'localhost'; // Link de acesso
    $user = 'root';         // Usuário
    $password = '';         // Senha do usuário
    $database = 'protocolos';   // Nome da base de dados
} else {

    // Provedor de hospedagem
    $server = '';           // Servidor
    $user = '';             // Usuário
    $password = '';         // Senha do usuário
    $database = '';         // Nome da base de dados
}
$conn = new mysqli($server, $user, $password, $database);

// Em caso de erro
if ($conn->connect_error) die("Falha de conexão com o banco e dados: " . $conn->connect_error);

// Transações MySQL em UTF-8
$conn->query("SET NAMES 'utf8'");
$conn->query('SET character_set_connection=utf8');
$conn->query('SET character_set_client=utf8');
$conn->query('SET character_set_results=utf8');

// MySQL com nomes de dias da semana e meses em português
$conn->query('SET GLOBAL lc_time_names = pt_BR');
$conn->query('SET lc_time_names = pt_BR');

// Variável de configuração do site
$T = array (
    'siteName' => 'LMG',             // Nome do site
    'siteSlogan' => 'Intranet',         // Slogam do site
    'siteLogo' => '/img/logo02.png',    // Logotipo do site
    'favicon' => '/img/logo02.png',     // Ícone de favoritos
    'templateCSS' => '/css/global.css', // CSS do template 
    'pageTitle' => 'Intranet',          // <title> da página
    'pageCSS' => '',                    // CSS da página
    'pageJS' => '',                     // JavaScript da página
    'menuSocial' => array (             // Links para redes sociais
        'facebook' => 'https://facebook.com/LMG',
        'youtube' => 'https://youtube.com/LMG',
    )
);

?>