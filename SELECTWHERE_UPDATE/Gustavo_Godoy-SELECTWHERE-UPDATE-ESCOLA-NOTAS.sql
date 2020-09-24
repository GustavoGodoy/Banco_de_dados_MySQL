CREATE DATABASE db_escola;
use db_escola;

CREATE TABLE tb_alunos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome_aluno varchar(255),
idade_aluno int,
sala_aluno varchar(2),
matricula_aluno varchar(6),
nota_aluno double(3,1)
);

INSERT INTO tb_alunos(nome_aluno, idade_aluno, sala_aluno, matricula_aluno, nota_aluno) VALUES 
("JOSÉ",12,"6E","EPX2LD",8.2),
("JOAO",14,"8F","EPX2LD",9.1),
("PEDRO",14,"8F","EPX2LD",5.2),
("JOANA",12,"6E","EPX2LD",6.6),
("FERNANDA",12,"6E","EPX2LD",10.0),
("GABRIELA",11,"5A","EPX2LD",3.2),
("HENRIQUE",11,"5A","EPX2LD",8.9),
("GUILHERME",12,"6E","EPX2LD",7.2);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota_aluno > 7;
SELECT * FROM tb_alunos WHERE nota_aluno < 7;

UPDATE tb_alunos SET nome_aluno = "PEDRINHO" WHERE id=1;

SELECT * FROM tb_alunos;