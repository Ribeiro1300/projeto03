<?php

// Configurações globais
require_once ('_config.php');



/***** Configurações da página *****/

// Título da página
$T['pageTitle'] = 'Faça Contato';

// CSS da página
$T['pageCSS'] = '/css/contacts.css';

// JavaScript da página
$T['pageJS'] = '';

/***** Processa o envio do formulário *****/

// Verifica se form foi enviado
$sended = false;
if (isset($_POST['send'])):

    // Obter e filtrar os campos
    $name = trim(filter_input(INPUT_POST, 'name', FILTER_SANITIZE_STRING));
    $email = trim(filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL));
    $subject = trim(filter_input(INPUT_POST, 'subject', FILTER_SANITIZE_STRING));
    $message = trim(filter_input(INPUT_POST, 'message', FILTER_SANITIZE_STRING));

    // Salva no database
    $sql = "
    INSERT INTO contacts (
        name, email, subject, message
    ) VALUES (
        '{$name}', '{$email}', '{$subject}', '{$message}'
    );
    ";
    $res = $conn->query($sql);

    // Feedback ao usuário
    $sended = true;

endif;

// Cabeçalho da página
require_once('_header.php');

?>

<!-- Conteúdo principal -->
<article>

    <h2>Faça Contato</h2>

    <?php if(!$sended): ?>

    <form method="post" id="contact">
        <input type="hidden" name="send" value="ok">

        <p>Preencha os campos abaixo para entrar em contato conosco.</p>
        <p class="advise">Todos os campos são obrigatórios.</p>

        <p>
            <label for="name">Nome:</label>
            <input type="text" name="name" id="name" required minlength="3" class="valid">
        </p>

        <p>
            <label for="email">E-mail:</label>
            <input type="email" name="email" id="email" required class="valid">
        </p>

        <p>
            <label for="subject">Assunto:</label>
            <input type="text" name="subject" id="subject" required minlength="3" class="valid">
        </p>

        <p>
            <label for="message">Mensagem:</label>
            <textarea name="message" id="message" required minlength="5" class="valid"></textarea>
        </p>

        <p>
            <label></label>
            <button type="submit" name="submit" class="primary">Enviar</button>
        </p>

    </form>

    <?php else: ?>

        <h4>Olá <?php echo $name ?>!</h4>
        <p>Seu contato foi enviado com sucesso.</p>
        <p><em>Obrigado...</em></p>

    <?php endif ?>

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