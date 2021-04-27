-- Banco de dados do 'Tilojo'
-- NÃO EXECUTAR APÓS DEPLOY DO SITE (PRODUÇÃO)

-- Apaga o banco de dados caso exista
DROP DATABASE IF EXISTS tilojo;

-- Cria database novamente com buscas 'case insensitive'
CREATE DATABASE tilojo CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selecionar o database
USE tilojo;

-- Cria tabela com autores dos artigos
CREATE TABLE authors (
    aut_id INT PRIMARY KEY AUTO_INCREMENT,
    aut_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    aut_name VARCHAR(127) NOT NULL, 
    aut_image VARCHAR(255),
    aut_link VARCHAR(255),
    aut_email VARCHAR(255) NOT NULL,
    aut_status ENUM('inativo', 'ativo') DEFAULT 'ativo'
);

-- Inserir autores
INSERT INTO authors (
    aut_id,
    aut_name,
    aut_image,
    aut_link,
    aut_email
) VALUES 
(
    '1',
    'Joca da Silva',
    'https://randomuser.me/api/portraits/lego/7.jpg',
    'http://www.joca.com/',
    'joca@silva.com'
),
(
    '2',
    'André Luferat',
    'https://randomuser.me/api/portraits/lego/4.jpg',
    'http://www.luferat.net/',
    'andre@luferat.net'
),
(
    '3',
    'Setembrina Trocatapas',
    'https://randomuser.me/api/portraits/lego/3.jpg',
    'http://www.set.net/',
    'setembrina@set.net'
);

-- Cria tabela com Artigos
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    art_image VARCHAR(255) NOT NULL,
    art_title VARCHAR(127) NOT NULL,
    art_intro VARCHAR(255) NOT NULL,
    art_text LONGTEXT NOT NULL,
    art_author INT NOT NULL,
    art_status ENUM ('inativo', 'ativo') DEFAULT 'ativo',
    FOREIGN KEY (art_author) REFERENCES authors (aut_id)
);

-- Insere artigos
INSERT INTO articles (
    art_date,
    art_image,
    art_title,
    art_intro,
    art_text,
    art_author
) VALUES  
(
    '2021-03-10 10:10:00',
    'https://picsum.photos/300',
    'Primeiro artigo',
    'Este é nosso primeiro artigo sobre fuinhas, furões e afins.',
    '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae molestias, itaque inventore eius consequatur possimus delectus recusandae quaerat ratione doloribus corporis. At, repellat accusantium. Iusto quidem quis voluptatibus provident dolor?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ipsum quasi cupiditate neque, voluptas voluptate nam nostrum facilis aspernatur esse saepe expedita cumque animi consequatur ab odio? Ipsum, omnis ducimus.</p><img class="flush" src="https://picsum.photos/400/200" alt="imagem aleatória"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates incidunt officia id doloribus dicta saepe atque ab ullam nisi inventore quas libero, rem a eveniet assumenda ex quibusdam illo maiores?</p><h4>Lista de links:</h4><ul><li><a href="http://luferat.net/">Site do fessô</a></li><li><a href="http://github.com/luferat">GitHub do fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam, exercitationem commodi!</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nam, iusto eveniet? Harum nulla neque iusto, cumque similique voluptate doloremque quos totam repellendus omnis, assumenda a aperiam molestiae, beatae blanditiis quod.</p>',
    '2'
),
(
    '2021-03-13 10:10:00',
    'https://picsum.photos/301',
    'Porque as fuinhas gritam',
    'Sabe quando sua funha dá aquele "gritinho"?',
    '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae molestias, itaque inventore eius consequatur possimus delectus recusandae quaerat ratione doloribus corporis. At, repellat accusantium. Iusto quidem quis voluptatibus provident dolor?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ipsum quasi cupiditate neque, voluptas voluptate nam nostrum facilis aspernatur esse saepe expedita cumque animi consequatur ab odio? Ipsum, omnis ducimus.</p><img class="flush" src="https://picsum.photos/400/200" alt="imagem aleatória"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates incidunt officia id doloribus dicta saepe atque ab ullam nisi inventore quas libero, rem a eveniet assumenda ex quibusdam illo maiores?</p><h4>Lista de links:</h4><ul><li><a href="http://luferat.net/">Site do fessô</a></li><li><a href="http://github.com/luferat">GitHub do fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam, exercitationem commodi!</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nam, iusto eveniet? Harum nulla neque iusto, cumque similique voluptate doloremque quos totam repellendus omnis, assumenda a aperiam molestiae, beatae blanditiis quod.</p>',
    '1'
);

INSERT INTO articles (
    art_date,
    art_image,
    art_title,
    art_intro,
    art_text,
    art_author
) VALUES 
(
    '2021-03-13 11:42:00',
    'https://picsum.photos/302',
    'Fuinhas comem o que?',
    'Como alimetar seu pet de forma correta e saudável.',
    '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae molestias, itaque inventore eius consequatur possimus delectus recusandae quaerat ratione doloribus corporis. At, repellat accusantium. Iusto quidem quis voluptatibus provident dolor?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ipsum quasi cupiditate neque, voluptas voluptate nam nostrum facilis aspernatur esse saepe expedita cumque animi consequatur ab odio? Ipsum, omnis ducimus.</p><img class="flush" src="https://picsum.photos/400/200" alt="imagem aleatória"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates incidunt officia id doloribus dicta saepe atque ab ullam nisi inventore quas libero, rem a eveniet assumenda ex quibusdam illo maiores?</p><h4>Lista de links:</h4><ul><li><a href="http://luferat.net/">Site do fessô</a></li><li><a href="http://github.com/luferat">GitHub do fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam, exercitationem commodi!</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nam, iusto eveniet? Harum nulla neque iusto, cumque similique voluptate doloremque quos totam repellendus omnis, assumenda a aperiam molestiae, beatae blanditiis quod.</p>',
    '3'
),
(
    '2021-03-14 10:10:00',
    'https://picsum.photos/303',
    'Fuinhas e outos pets juntos',
    'Seu cachorro e sua funha podem se melhores amigos.',
    '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae molestias, itaque inventore eius consequatur possimus delectus recusandae quaerat ratione doloribus corporis. At, repellat accusantium. Iusto quidem quis voluptatibus provident dolor?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis ipsum quasi cupiditate neque, voluptas voluptate nam nostrum facilis aspernatur esse saepe expedita cumque animi consequatur ab odio? Ipsum, omnis ducimus.</p><img class="flush" src="https://picsum.photos/400/200" alt="imagem aleatória"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates incidunt officia id doloribus dicta saepe atque ab ullam nisi inventore quas libero, rem a eveniet assumenda ex quibusdam illo maiores?</p><h4>Lista de links:</h4><ul><li><a href="http://luferat.net/">Site do fessô</a></li><li><a href="http://github.com/luferat">GitHub do fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ullam, exercitationem commodi!</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nam, iusto eveniet? Harum nulla neque iusto, cumque similique voluptate doloremque quos totam repellendus omnis, assumenda a aperiam molestiae, beatae blanditiis quod.</p>',
    '2'
);

-- Cria tabela para contatos
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message LONGTEXT NOT NULL,
    status ENUM('recebida', 'lida', 'respondida', 'apagada') DEFAULT 'recebida'
);

-- Cria tabela para configurações do site
CREATE TABLE config (
    id INT PRIMARY KEY AUTO_INCREMENT,
    var VARCHAR(63) NOT NULL,
    val LONGTEXT NOT NULL
);

-- Insere configurações
INSERT INTO config (var, val) VALUES
('pageTitle', ''),
('pageCSS', ''),
('pageJS', ''),
('siteName', 'Fuinhas'),
('siteFullName', 'Fuinhas'),
('siteSlogan', 'Futuca onde não deve.'),
('siteLogo', '/img/logo_02.png'),
('favicon', '/favicon.png'),
('templateCSS', '/css/global.css'),
('social_github', 'http://github.com/fuinhas'),
('social_youtube', 'http://youtube.com/fuinhas'),
('social_linkedin', 'http://linkedin.com/fuinhas'),
('social_facebook', 'http://facebook.com/fuinhas'),
('siteOwner', 'André Luferat'),
('siteOwnerEmail', 'andre@luferat.net'),
('siteYear', '2021'),
('meta_author', 'André Luferat'),
('meta_description', 'Site sobre fuinhas, furões e afins.'),
('meta_keywords', 'fuinha, furão, pet, exótico, mamífero'),
('meta_copyright', '© 2021 André Luferat')
;