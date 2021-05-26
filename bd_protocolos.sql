create database protocolos character set utf8 COLLATE utf8_general_ci;

use protocolos;

create table tb_itens
( 
	id_itens int primary key,
	item_name varchar(50) not null,
    categoria ENUM('categoria01', 'categoria02', 'categoria03'),
    quantidade int not null,
    qtd_minima int not null  ,  
    situacao ENUM('falta', 'normal') DEFAULT 'normal',  /*a ideia seria colocar 2 opções (falta, normal)*/
    data_entrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	localizacao ENUM('geladeira01', 'geladeira02', 'geladeira03'),   /*O ideal seria colocar opções correspondente a locais no laboratório*/
    descricao varchar(255),
    link_protocolo varchar(255),   /*Colocar um link pra redirecionar para a página com os protocolos*/
    item_image varchar(255) 
);


create table tb_pop  /*Procedimento Operacional Padrão*/
(
	id_pop int not null,
    pop_name varchar(50) not null,
    itens_necessarios int not null,  /*Aqui a ideia é linkar com os itens da tabela/banco de dados estoque*/
    metodologia LONGTEXT not null,
    pop_image varchar(255),
    foreign key (itens_necessarios) references tb_itens (id_itens)
);



insert into tb_itens
(
    id_itens,
    item_name,
    categoria,
    quantidade,
    qtd_minima,
    situacao,
    /*data_entrada,       2021-03-10 10:10:00*/
    localizacao,
    descricao,
    link_protocolo,
    item_image
)
VALUES
(
    '1',
    'item01',
    'categoria01',
    '20',
    '5',
    'normal',
    'geladeira01',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'http://www.fcfar.unesp.br/laboratorio_sandro_valentini/int_protocolos.php',
    'https://image.freepik.com/vetores-gratis/laboratorio-de-ciencias-de-design-plano_23-2148489404.jpg'
),
(
    '2',
    'item02',
    'categoria02',
    '5',
    '10',
    'falta',
    'geladeira02',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'http://www.fcfar.unesp.br/laboratorio_sandro_valentini/int_protocolos.php',
    'https://image.freepik.com/vetores-gratis/laboratorio-de-ciencias-de-design-plano_23-2148489404.jpg'
),
(
    '3',
    'item03',
    'categoria03',
    '50',
    '10',
    'normal',
    'geladeira03',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'http://www.fcfar.unesp.br/laboratorio_sandro_valentini/int_protocolos.php',
    'https://image.freepik.com/vetores-gratis/laboratorio-de-ciencias-de-design-plano_23-2148489404.jpg'
),
(
    '4',
    'item04',
    'categoria02',
    '10',
    '20',
    'falta',
    'geladeira02',
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'http://www.fcfar.unesp.br/laboratorio_sandro_valentini/int_protocolos.php',
    'https://image.freepik.com/vetores-gratis/laboratorio-de-ciencias-de-design-plano_23-2148489404.jpg'
);


insert into tb_pop
(
    id_pop,
    pop_name,
    itens_necessarios,
    metodologia,
    pop_image
)
VALUES
(
    '1',
    'procedimento01',
    '4',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci porta non pulvinar neque. Massa tincidunt dui ut ornare lectus sit amet est placerat. Pretium lectus quam id leo. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Sodales ut etiam sit amet. Nunc congue nisi vitae suscipit tellus mauris a diam. Fermentum odio eu feugiat pretium nibh ipsum consequat. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Eu consequat ac felis donec et odio pellentesque. Tempor commodo ullamcorper a lacus vestibulum. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi.

Neque volutpat ac tincidunt vitae semper quis lectus nulla. Pharetra massa massa ultricies mi quis. Nunc pulvinar sapien et ligula. Sagittis nisl rhoncus mattis rhoncus urna neque. Vitae turpis massa sed elementum tempus egestas. Tristique magna sit amet purus. Neque sodales ut etiam sit amet. Mauris sit amet massa vitae tortor condimentum lacinia. Pulvinar pellentesque habitant morbi tristique senectus et netus et. In nisl nisi scelerisque eu ultrices vitae. Nibh ipsum consequat nisl vel pretium lectus quam id leo. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Mattis rhoncus urna neque viverra justo nec ultrices dui sapien. Faucibus et molestie ac feugiat sed.',
    'https://image.freepik.com/vetores-gratis/cientista-femea-mao-ilustracoes-desenhadas_52683-31879.jpg'
),
(
    '2',
    'procedimento02',
    '3',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci porta non pulvinar neque. Massa tincidunt dui ut ornare lectus sit amet est placerat. Pretium lectus quam id leo. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Sodales ut etiam sit amet. Nunc congue nisi vitae suscipit tellus mauris a diam. Fermentum odio eu feugiat pretium nibh ipsum consequat. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Eu consequat ac felis donec et odio pellentesque. Tempor commodo ullamcorper a lacus vestibulum. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi.

Neque volutpat ac tincidunt vitae semper quis lectus nulla. Pharetra massa massa ultricies mi quis. Nunc pulvinar sapien et ligula. Sagittis nisl rhoncus mattis rhoncus urna neque. Vitae turpis massa sed elementum tempus egestas. Tristique magna sit amet purus. Neque sodales ut etiam sit amet. Mauris sit amet massa vitae tortor condimentum lacinia. Pulvinar pellentesque habitant morbi tristique senectus et netus et. In nisl nisi scelerisque eu ultrices vitae. Nibh ipsum consequat nisl vel pretium lectus quam id leo. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Mattis rhoncus urna neque viverra justo nec ultrices dui sapien. Faucibus et molestie ac feugiat sed.',
    'https://image.freepik.com/vetores-gratis/cientista-femea-mao-ilustracoes-desenhadas_52683-31879.jpg'
),
(
    '3',
    'procedimento03',
    '2',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci porta non pulvinar neque. Massa tincidunt dui ut ornare lectus sit amet est placerat. Pretium lectus quam id leo. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Sodales ut etiam sit amet. Nunc congue nisi vitae suscipit tellus mauris a diam. Fermentum odio eu feugiat pretium nibh ipsum consequat. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Eu consequat ac felis donec et odio pellentesque. Tempor commodo ullamcorper a lacus vestibulum. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi.

Neque volutpat ac tincidunt vitae semper quis lectus nulla. Pharetra massa massa ultricies mi quis. Nunc pulvinar sapien et ligula. Sagittis nisl rhoncus mattis rhoncus urna neque. Vitae turpis massa sed elementum tempus egestas. Tristique magna sit amet purus. Neque sodales ut etiam sit amet. Mauris sit amet massa vitae tortor condimentum lacinia. Pulvinar pellentesque habitant morbi tristique senectus et netus et. In nisl nisi scelerisque eu ultrices vitae. Nibh ipsum consequat nisl vel pretium lectus quam id leo. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Mattis rhoncus urna neque viverra justo nec ultrices dui sapien. Faucibus et molestie ac feugiat sed.',
    'https://image.freepik.com/vetores-gratis/cientista-femea-mao-ilustracoes-desenhadas_52683-31879.jpg'
),
(
    '4',
    'procedimento04',
    '1',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Orci porta non pulvinar neque. Massa tincidunt dui ut ornare lectus sit amet est placerat. Pretium lectus quam id leo. Feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Sodales ut etiam sit amet. Nunc congue nisi vitae suscipit tellus mauris a diam. Fermentum odio eu feugiat pretium nibh ipsum consequat. Fusce id velit ut tortor pretium viverra suspendisse potenti nullam. Dapibus ultrices in iaculis nunc sed augue lacus viverra vitae. Eu consequat ac felis donec et odio pellentesque. Tempor commodo ullamcorper a lacus vestibulum. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi.

Neque volutpat ac tincidunt vitae semper quis lectus nulla. Pharetra massa massa ultricies mi quis. Nunc pulvinar sapien et ligula. Sagittis nisl rhoncus mattis rhoncus urna neque. Vitae turpis massa sed elementum tempus egestas. Tristique magna sit amet purus. Neque sodales ut etiam sit amet. Mauris sit amet massa vitae tortor condimentum lacinia. Pulvinar pellentesque habitant morbi tristique senectus et netus et. In nisl nisi scelerisque eu ultrices vitae. Nibh ipsum consequat nisl vel pretium lectus quam id leo. Mollis aliquam ut porttitor leo a diam sollicitudin tempor id. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Mattis rhoncus urna neque viverra justo nec ultrices dui sapien. Faucibus et molestie ac feugiat sed.',
    'https://image.freepik.com/vetores-gratis/cientista-femea-mao-ilustracoes-desenhadas_52683-31879.jpg'
);

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(127) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message LONGTEXT NOT NULL,
    status ENUM('recebida', 'lida', 'respondida', 'apagada') DEFAULT 'recebida'
);