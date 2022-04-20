CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_ecommerce (
id bigint auto_increment,
produto varchar (255),
modelo varchar (255),
marca varchar (255),
valor decimal,
estoque int,

PRIMARY KEY (id)
); 

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("Celular", "Moto G10", "Motorola", 1200.00, 74);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("Notebook", "VivoBook", "ASUS", 4500.00, 56);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("Mouse", "wireless", "Logitec", 99.00, 148);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("Teclado", "mecânico", "Razer", 591.00, 41);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("Carregador", "Iphone11", "Apple", 899.00, 5);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("SSD", "960 gb", "KingSton", 658.00, 24);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("PenDrive", "4 gb", "Multilaser", 20.00, 400);

INSERT INTO tb_ecommerce(produto, modelo, marca, valor, estoque)
VALUES ("Led", "branco", "sem marca", 46.00, 63);

DELETE FROM tb_ecommerce WHERE id=10;
DELETE FROM tb_ecommerce WHERE id=11;
SET SQL_SAFE_UPDATES =0;
UPDATE tb_ecommerce SET valor = 35.00 WHERE id=12;
SELECT * FROM tb_ecommerce;
-- SELECT id, produto, modelo, marca, valor, estoque FROM tb_ecommerce WHERE valor>500
-- SELECT id, produto, modelo, marca, valor, estoque FROM tb_ecommerce WHERE valor<500