CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id_categoria_ INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_categoria varchar(255)

);
CREATE TABLE tb_produto (
    id_prod INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_prod VARCHAR(255),
    valor_prod double(255,2),
    quantidade_prod int,
    id_categoria int,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria_)
);



INSERT INTO tb_categoria(nome_categoria) VALUES 
('AVES'),
('BOVINO'),
('SUÍNO'),
('OUTROS');

INSERT INTO tb_produto(nome_prod,valor_prod,quantidade_prod,id_categoria) VALUES
('ASINHA DE FRANGO',25.00,120,1),
('FRALDINHA',35.28,44,2),
('ALCATRA',45.33,100,2),
('PICANHA',65.99,80,2),
('PEITO DE FRANGO',25.00,140,1),
('LINGUIÇA APIMENTADA',25.00,120,3),
('COSTELINHA',37.00,20,3),
('CARVÃO',15.00,30,4);


SELECT * FROM tb_produto WHERE valor_prod > 50;
SELECT * FROM tb_produto WHERE valor_prod BETWEEN 3 and 60;
SELECT * FROM tb_produto WHERE nome_prod LIKE 'c%';
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id_categoria_;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.id_categoria = tb_categoria.id_categoria_
WHERE id_categoria = 2;
