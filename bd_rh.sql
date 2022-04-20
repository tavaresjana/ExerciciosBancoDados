CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_rhsistema(
id bigint auto_increment,
matricula bigint,
nome varchar(255),
idade int,
setor varchar(255),
cargo varchar(255),
salario int,

PRIMARY KEY (id)

);
ALTER TABLE tb_rhsistema add salario bigint;

INSERT INTO tb_rhsistema(matricula, nome, idade, setor, cargo)
VALUES (001, "Maria", 18, "Marketing", "Gestora");

INSERT INTO tb_rhsistema(matricula, nome, idade, setor, cargo)
VALUES (002, "João", 19, "Compras", "comprador");

INSERT INTO tb_rhsistema(matricula, nome, idade, setor, cargo)
VALUES (003, "Pedro", 20, "Fábrica", "Operário");

INSERT INTO tb_rhsistema(matricula, nome, idade, setor, cargo)
VALUES (004, "Joana", 21, "Almoxarifado", "Assistente Almoxarifado");

INSERT INTO tb_rhsistema(matricula, nome, idade, setor, cargo)
VALUES (005, "Ana", 22, "Recepção", "Recepcionista");

INSERT INTO tb_rhsistema(matricula, nome, idade, setor, cargo)
VALUES (006, "Duda", 23, "Recepção", "Recepcionista bilingue");

UPDATE tb_rhsistema SET salario = 1001 WHERE id=1;
UPDATE tb_rhsistema SET salario = 2001 WHERE id=3;
UPDATE tb_rhsistema SET salario = 501 WHERE id=4;
UPDATE tb_rhsistema SET salario = 701 WHERE id=5;
UPDATE tb_rhsistema SET salario = 551 WHERE id=6;
UPDATE tb_rhsistema SET salario = 552 WHERE id=12;


DELETE FROM tb_rhsistema WHERE id =6;
DELETE FROM tb_rhsistema WHERE id =7;
DELETE FROM tb_rhsistema WHERE id =8;
DELETE FROM tb_rhsistema WHERE id =9;
DELETE FROM tb_rhsistema WHERE id =10;
DELETE FROM tb_rhsistema WHERE id =11;
-- SELECT nome, salario FROM tb_rhsistema WHERE salario>2000;
-- SELECT nome, salario FROM tb_rhsistema WHERE salario<2000;
-- SELECT * FROM tb_rhsistema;