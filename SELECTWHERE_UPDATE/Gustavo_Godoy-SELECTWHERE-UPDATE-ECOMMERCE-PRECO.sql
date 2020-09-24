CREATE DATABASE db_ecommerce;
use db_ecommerce;

CREATE TABLE tb_produtos(
id int PRIMARY KEY AUTO_INCREMENT,
nome_produto varchar(255),
qtd_produto varchar(255),
preco_produto double (20,2),
data_entrada TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tb_produtos(nome_produto, qtd_produto, preco_produto) VALUES
("CHARGER TYPE-C",5,25.00),
("FRONT-END STICKERS",7,9.00),
("DRONE A-52",2,925.99),
("PS5",2,5999.00),
("HEADSET HYPERX",10,225.00),
("REDDRAGON KUMARA SWITCH BLUE",20,425.00),
("TV 70' POL SMART SAMSUNG",2,3395.99),
("MOUSE INFOKIT GUARDIAN",20,85.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco_produto > 500;
SELECT * FROM tb_produtos WHERE preco_produto < 500;

UPDATE tb_produtos SET nome_produto = "FAST CHARGER TYPE-C" WHERE id=1;

SELECT * FROM tb_produtos;