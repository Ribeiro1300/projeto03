create database protocolos character set utf8 COLLATE utf8_general_ci;

use protocolos;

create table tb_pop  /*Procedimento Operacional Padrão*/
(
	id int primary key auto_increment,
    nome varchar(50) not null,
    itens_necessarios ENUM("1", "2", "3", "4"),  /*Aqui a ideia é linkar com os itens da tabela/banco de dados estoque*/
    metodologia LONGTEXT not null,
);

create table tb_itens
( 
	id int not null auto_increment,
	nome varchar(50) not null,
    categoria ENUM('categoria01', 'categoria02', 'categoria03'),
    quantidade int not null,
    qtd_minima int not null  ,  
    situacao ENUM('falta', 'normal') DEFAULT 'normal',  /*a ideia seria colocar 2 opções (falta, normal)*/
    data_entrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	localizacao ENUM('geladeira01', 'geladeira02', 'geladeira03'),   /*O ideal seria colocar opções correspondente a locais no laboratório*/
    descricao varchar(255),
    link_protocolo varchar(255)   /*Colocar um link pra redirecionar para a página com os protocolos*/ 
);


insert into tb_pop
(
    nome,
    itens_necessarios,
    metodologia
)
VALUES
(
    '',
    '',
    ''
),
(
    '',
    '',
    ''
),
(
    '',
    '',
    ''
),
(
    '',
    '',
    ''
);

insert into tb_itens
(
    nome,
    categoria,
    quantidade,
    qtd_minima,
    situacao,
    /*data_entrada,       2021-03-10 10:10:00*/
    localizacao,
    descricao,
    link_protocolo
)
VALUES
(
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
),
(
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
),(
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
),
(
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
);