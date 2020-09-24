CREATE DATABASE db_rh;
use db_rh;


CREATE TABLE tb_funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    salario DOUBLE(10 , 2 ),
    telefone VARCHAR(20),
    nacionalidade VARCHAR(3)
);

INSERT INTO tb_funcionarios(nome, idade, salario, telefone, nacionalidade) VALUES 
("Ronaldinho",32,23000.12,"11 942345532","BR"),
("Fernandinho",23,4000.23,"11 942345532","BR"),
("Pedrinho",19,1700.00,"11 942345532","PT"),
("Jhonas",17,1200.00,"11 942345532","PT"),
("Joana",22,3520.12,"11 942345532","EUA"),
("Helena",21,1980.02,"11 942345532","CH");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET nome = "PEDRINHO" WHERE id=1;

SELECT * FROM tb_funcionarios;