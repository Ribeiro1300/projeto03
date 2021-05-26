<?php

// Configurações globais
require_once ('_config.php');

/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Protocolos';

// CSS da página
$T['pageCSS'] = '/css/view.css';

// JavaScript da página
$T['pageJS'] = '/js/view.js';


/* Exibe o artigo completo */

// Obter o ID da URL
if (isset($_SERVER['QUERY_STRING'])) {
    $id = intval($_SERVER['QUERY_STRING']);
} else {
    $id = 0;
}

// Se não informou artigo, volta para index
if ($id == 0) {
    header('Location: /index.php');
}

// Obtém o artigo do database
$sql = "
SELECT *, DATE_FORMAT(data_entrada, '%d de %M de %Y, às %H:%i') AS dateBr
FROM `tb_itens` 
INNER JOIN tb_pop ON itens_necessarios = id_itens
WHERE id_pop = '{$id}'
";
$res = $conn->query($sql);

// Se não achou o protocolo, volta para a index
if ($res->num_rows != 1) {
    header('Location: /index.php');
}

// Monta a view em HTML
$prot = $res->fetch_assoc();

// Título da página
$T['pageTitle'] = $prot['pop_name'];

// Cabeçalho da página
require_once('_header.php');

    $itens = <<<HTML
    <div class="item" data-link="/itens.php?{$prot['itens_necessarios']}">
        <img src="{$prot['item_image']}" alt="{$prot['item_name']}">
        <div>
            <h4>{$prot['item_name']}</h4>
            <small></small>
        </div>
    </div>

HTML;

?>

<!-- Conteúdo principal -->
<article>
<h2 style="text-transform: uppercase"><?php echo $prot['pop_name'] ?></h2>
<small class="dateAuthor">Registrado em <?php echo $prot['dateBr'] ?>.</small>
<br>
<br>
<div><?php echo $prot['metodologia'] ?></div>
<p class="return-link"><a href="/protocolos.php">Lista de Protocolos</a></p>

    <div>   
        <h3>Item Necessários para o Procedimento</h3>
        <?php echo $itens ?> 
    </div>
</article>
    

<!-- Barra lateral -->
<aside>
    <h3>Sobre o Protocolo</h3>
    <div class="author">
        <a href="<?php echo $prot['link_protocolo'] ?>" target="_blank">
            <img src="<?php echo $prot['pop_image'] ?>" alt="<?php echo $prot['pop_name'] ?>">
        </a>
        <h4>
            <a href="<?php echo $prot['link_protocolo'] ?>" target="_blank">
                <?php echo $prot['pop_name'] ?>
            </a>
        </h4>
    </div>

</aside>
<?php

// Rodapé da página
require_once ('_footer.php');
