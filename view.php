<?php

// Configurações globais
require_once ('_config.php');

/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Protocolos';

// CSS da página
$T['pageCSS'] = '/css/view.css';

// JavaScript da página
$T['pageJS'] = '';


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

?>

<!-- Conteúdo principal -->
<article>

<h2><?php echo $prot['pop_name'] ?></h2>
<small class="dateAuthor">Por <?php echo $prot['item_name'] ?> em <?php echo $prot['dateBr'] ?>.</small>
<div><?php echo $prot['art_text'] ?></div>
<p class="return-link"><a href="/protocolos.php">Lista de Protocolos</a></p>

</article>

<!-- Barra lateral -->
<aside>
    <h3>Sobre o Autor</h3>
    <div class="author">
        <a href="<?php echo $prot['aut_link'] ?>" target="_blank">
            <img src="<?php echo $prot['aut_image'] ?>" alt="<?php echo $prot['aut_name'] ?>">
        </a>
        <h4>
            <a href="<?php echo $prot['aut_link'] ?>" target="_blank">
                <?php echo $prot['aut_name'] ?>
            </a>
        </h4>
    </div>

</aside>
<?php

// Rodapé da página
require_once ('_footer.php');
