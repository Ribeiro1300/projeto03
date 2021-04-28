<?php

// Configurações globais
require_once ('_config.php');





/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Página Modelo';

// CSS da página
$T['pageCSS'] = '/css/template.css';

// JavaScript da página
$T['pageJS'] = '/js/template.js';

// Cabeçalho da página
require_once('_header.php');

?>

            <!-- Conteúdo principal -->
            <article>

                <h2>Laboratório de Medicina Genômica</h2>
                <h3 id="id_sobre">Sobre</h3>
                <h3>História</h3>
                <h3>Projetos</h3>
                <h3>Equipe</h3>
                

            </article>

            <!-- Barra lateral -->
            <aside>
                <h3>Links Úteis</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                <ul>
                    <li><a href="#">Lab 01</a></li>
                    <li><a href="#">Lab 02</a></li>
                    <li><a href="#">Lab 03</a></li>
                    <li><a href="#">Lab 04</a></li>
                </ul>
            </aside>

<?php

// Rodapé da página
require_once ('_footer.php');
