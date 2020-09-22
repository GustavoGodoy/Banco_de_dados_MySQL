create database db_deletar;
use db_deletar;

CREATE TABLE tb_consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

insert into tb_consumidores(nome) values
("Marcelo"),
("Julia");

select * from tb_consumidores;
delete from tb_consumidores where id = 1;

select * from tb_consumidores;