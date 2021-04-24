<?php
/************************/
/* Configuração do Site */
/************************/

// PHP em UTF-8
header('Content-Type: text/html; charset=utf-8');


// Variável de configuração do site
$T = array (
    'siteName' => 'LMG',             // Nome do site
    'siteSlogan' => 'Intranet',         // Slogam do site
    'siteLogo' => 'img/logo02.png',    // Logotipo do site
    'favicon' => 'img/logo02.png',     // Ícone de favoritos
    'templateCSS' => 'css/global.css', // CSS do template 
    'pageTitle' => 'Intranet',          // <title> da página
    'pageCSS' => '',                    // CSS da página
    'pageJS' => '',                     // JavaScript da página
    'menuSocial' => array (             // Links para redes sociais
        'facebook' => 'https://facebook.com/tilojo',
        'youtube' => 'https://youtube.com/tilojo',
        'github' => 'https://github.com/tilojo',
        'linkedin' => 'https://linkedin.com/tilojo'
    )
);

?>