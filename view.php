<?php

// Configurações globais
require_once ('_config.php');

/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Artigo Modelo';

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
SELECT *, DATE_FORMAT(art_date, '%d de %M de %Y, às %H:%i') AS dateBr
FROM `articles` 
INNER JOIN authors ON art_author = aut_id
WHERE art_id = '{$id}' AND art_date <= NOW() AND art_status = 'ativo'
";
$res = $conn->query($sql);

// Se não achou o artigo, volta para a index
if ($res->num_rows != 1) {
    header('Location: /index.php');
}

// Monta a view em HTML
$art = $res->fetch_assoc();

// Título da página
$T['pageTitle'] = $art['art_title'];

// Cabeçalho da página
require_once('_header.php');

?>

<!-- Conteúdo principal -->
<article>

<h2><?php echo $art['art_title'] ?></h2>
<small class="dateAuthor">Por <?php echo $art['aut_name'] ?> em <?php echo $art['dateBr'] ?>.</small>
<div><?php echo $art['art_text'] ?></div>
<p class="return-link"><a href="/index.php">Lista de artigos</a></p>

</article>

<!-- Barra lateral -->
<aside>
    <h3>Sobre o Autor</h3>
    <div class="author">
        <a href="<?php echo $art['aut_link'] ?>" target="_blank">
            <img src="<?php echo $art['aut_image'] ?>" alt="<?php echo $art['aut_name'] ?>">
        </a>
        <h4>
            <a href="<?php echo $art['aut_link'] ?>" target="_blank">
                <?php echo $art['aut_name'] ?>
            </a>
        </h4>
    </div>

</aside>
<?php

// Rodapé da página
require_once ('_footer.php');
