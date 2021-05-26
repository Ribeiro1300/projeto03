<?php

// Configurações globais
require_once ('_config.php');

/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Página de Itens';

// CSS da página
$T['pageCSS'] = '/css/itens.css';

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
WHERE id_itens = '{$id}'
";
$res = $conn->query($sql);

// Monta a view em HTML
$item = $res->fetch_assoc();

// Título da página
$T['pageTitle'] = $item['item_name'];

// Cabeçalho da página
require_once('_header.php');

?>

<!-- Conteúdo principal -->
<article>

<h2><?php echo $item['item_name'] ?></h2>
<small class="dateAuthor">Registrado em <?php echo $item['dateBr'] ?>.</small>

<div>Categoria:  <?php echo $item['categoria'] ?></div>
<div>Quantidade:  <?php echo $item['quantidade'] ?></div>
<div>Quantidade Mínima:  <?php echo $item['qtd_minima'] ?></div>
<div>Situação:  <?php echo $item['situacao'] ?></div>
<div>Localização:  <?php echo $item['localizacao'] ?></div>
<div>Descrição:<br><?php echo $item['descricao'] ?></div>
</article>

<!-- Barra lateral -->
<aside>
    <h3>Sobre o Item</h3>
    <div class="author">
        <a href="<?php echo $item['link_protocolo'] ?>" target="_blank">
            <img src="<?php echo $item['item_image'] ?>" alt="<?php echo $item['item_name'] ?>">
        </a>
        <h4>
            <a href="<?php echo $item['link_protocolo'] ?>" target="_blank">
                <?php echo $item['item_name'] ?>
            </a>
        </h4>
    </div>

</aside>
<?php

// Rodapé da página
require_once ('_footer.php');
