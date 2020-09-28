CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id_categoria_ INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_categoria varchar(255)

);
CREATE TABLE tb_curso (
    id_curso INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_curso VARCHAR(255),
    valor_curso double(255,2),
    vagas_curso int,
    id_categoria int,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria_)
);



INSERT INTO tb_categoria(nome_categoria) VALUES 
('INFORMATICA'),
('ADMINISTRAÇÃO'),
('ENGENHARIA'),
('QUIMICA');

INSERT INTO tb_curso(nome_curso,valor_curso,vagas_curso,id_categoria) VALUES
('JAVA FULL STACK',25.00,30,1),
('GESTÃO EMPRESARIAL',35.28,20,2),
('LOGISTICA',45.33,50,2),
('GESTÃO DE RH',65.99,40,2),
('GAME DEVELOPMENT',25.00,20,1),
('ENGENHARIA DE PRODUÇÃO',25.00,80,3),
('ENGENHARIA DA SEGURANÇA DO TRABALHO',37.00,80,3),
('COSMETOLOGIA',15.00,30,4);


SELECT * FROM tb_curso WHERE valor_curso > 50;
SELECT * FROM tb_curso WHERE valor_curso BETWEEN 3 and 60;
SELECT * FROM tb_curso WHERE nome_curso LIKE 'j%';
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_curso.id_categoria = tb_categoria.id_categoria_;

SELECT * FROM tb_curso
INNER JOIN tb_categoria ON tb_curso.id_categoria = tb_categoria.id_categoria_
WHERE id_categoria = 1;