$(document).ready(runApp);

// Aplicativo principal
function runApp() {
    // Detecta clique em um artigo
    $(document).on('click', '.item', goToProtocol);
}

// Ao clicar no artigo
function goToProtocol() {
    protLink = $(this).attr('data-link');
    location.href = protLink;
    return false;
}