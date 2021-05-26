$(document).ready(runApp);

// Aplicativo principal
function runApp() {
    // Detecta clique em um artigo
    $(document).on('click', '.article', goToArticle);
}

// Ao cloicar no artigo
function goToArticle() {
    artLink = $(this).attr('data-link');
    location.href = artLink;
    return false;
}