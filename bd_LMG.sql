create database estoque;
use estoque


create table tb_itens
( 
	id int not null auto_increment,
	nome varchar(50) not null,
    categoria varchar(50),
    quantidade int not null,
    qtd_minima int no null  ,  
    situacao boolean not null,  /*a ideia seria colocar 2 opções (falta, normal)*/
    data_entrada datetime,
	localizacao varchar(150),   /*O ideial seria colocar opções correspondente a locais no laboratório*/
    descricao varchar(150),
    link_protocolo varchar(50)   /*Colocar um link pra redirecionar para a página com os protocolos*/ 
);