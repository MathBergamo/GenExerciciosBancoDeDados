CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE colaboradores(
	id bigint primary key auto_increment,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    salario FLOAT,
    idade INT
);

INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Carlos Oliveira', 'Técnico de Suporte', 1800.00, 23);
INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Maria Do Carmo', 'Analista de Sistemas', 2800.00, 21);
INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Anderson Silva', 'Desenvolvedor', 3800.00, 24);
INSERT INTO colaboradores(nome,cargo,salario,idade) VALUES ('Joao Sebastiao', 'Técnico de Suporte', 1400.00, 26);

SELECT * FROM Colaboradores WHERE salario > 2000;
SELECT * FROM Colaboradores WHERE salario < 2000;

UPDATE Colaboradores SET salario = 1950.00 WHERE id = 2;