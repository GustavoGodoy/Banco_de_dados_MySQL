use db_loja3;

CREATE TABLE tb_venda (
    idVenda INT,
    produto VARCHAR(255),
    preco DECIMAL(10,2),
    horarioVenda DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_Entrega DATE,
    hora_Entrega TIME
);

insert tb_venda(idVenda,produto, preco, data_Entrega, hora_Entrega) values (1,"Ecosport",69000.00,"2018-12-03","13:40:00");
select * from tb_venda;