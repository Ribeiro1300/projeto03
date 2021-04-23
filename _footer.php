</main>

<!-- Rodapé -->
<footer>

    <div class="license">
        <a href="/"><i class="fas fa-fw fa-home"></i></a>
        <div>&copy; Copyright 2021 André Luferat</div>
        <a href="#top"><i class="fas fa-fw fa-arrow-alt-circle-up"></i></a>
    </div>

    <div class="menus">
        <div>
<?php

// Obtém e monta links das redes sociais
foreach($T['menuSocial'] as $sName => $sLink) :

    // Primeira letra maiúscula
    $sNameView = ucfirst($sName);

    // Heredoc
    echo <<<HTML

<a href="{$sLink}">
    <i class="fab fa-fw fa-{$sName}"></i>
    <span>{$sNameView}</span>
</a>

HTML;

endforeach;

?>
    </div>
        <div>
            <a href="/"><i class="fas fa-fw fa-file-code"></i> <span>Sobre o site</span></a>
            <a href="/"><i class="fas fa-fw fa-user-tie"></i> <span>Sobre o autor</span></a>
            <a href="/"><i class="fas fa-fw fa-comments"></i> <span>Contatos</span></a>
            <a href="/"><i class="fas fa-fw fa-lock"></i> <span>Privacidade</span></a>
        </div>
    </div>

</footer>

</div>

<?php // Biblioteca jQuery de manipulação do DOM ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<?php
// Carrega JavaScript desta página
if ($T['pageJS'] != '') echo "<script src=\"{$T['pageJS']}\"></script>";
?>

</body>

</html>