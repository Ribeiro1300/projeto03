<?php

// Configurações globais
require_once ('_config.php');

/***** Lista de protocolos *****/

// Obtendo do database
$sql = "
SELECT id_pop, pop_image, pop_name FROM tb_pop
;
";
$res = $conn->query($sql); //mysqliquery($conn, $sql)

// Prepara a 'view' dos protocolos
$protocols = '';

// Obtém uma linha por vez
while($prot = $res->fetch_assoc()):

    $protocols .= <<<HTML
    <div class="article" data-link="/view.php?{$prot['id_pop']}">
        <img src="{$prot['pop_image']}" alt="{$prot['pop_name']}">
        <div>
            <h4>{$prot['pop_name']}</h4>
            <small></small>
        </div>
    </div>

HTML;

    
endwhile;




/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Protocolos';

// CSS da página
$T['pageCSS'] = '/css/protocolos.css';

// JavaScript da página
$T['pageJS'] = '/js/protocolos.js';

// Cabeçalho da página
require_once('_header.php');

?>

            <!-- Conteúdo principal -->
            <article>

                <?php echo $protocols ?> 

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
