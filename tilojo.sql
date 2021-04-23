-- Database do site TILOJO (Intranet)

-- Apaga banco de dados
DROP DATABASE IF EXISTS tilojo;

-- Cria banco de dados
CREATE DATABASE tilojo CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Seleciona o banco de dados
USE tilojo;

-- Tabela dos autores dos artigos
CREATE TABLE authors (
    aut_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    aut_date TIMESTAMP default CURRENT_TIMESTAMP,
    aut_name VARCHAR(127) NOT NULL,
    ...
);