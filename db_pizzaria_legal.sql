-- criando o banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- criando tabela de categorias
CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(255),
caracteristica varchar(255),
PRIMARY KEY (id)
);
-- inserindo dados da tabela categorias
INSERT tb_categorias (tipo, caracteristica) VALUES ("Salgada","broto");
INSERT tb_categorias (tipo, caracteristica) VALUES ("Salgada","grande");
INSERT tb_categorias (tipo, caracteristica) VALUES ("Doce","broto");
INSERT tb_categorias (tipo, caracteristica) VALUES ("Doce","grande");

-- criando tabela de pizzas
CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar(255),
preco decimal,
ingredientes varchar (255),
tipo2 varchar (255),
PRIMARY KEY (id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias (id)
);

-- inserindo dados da tabela de pizzas
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Peperoni", 60.00,"massa trad. + peperoni + queijo","inteira",2);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Brigadeiro", 60.00,"massa trad. + brigadeiro","inteira",3);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Abacaxi e Doce de leite", 75.00,"massa trad. + abacaxi + doce de leite","inteira",4);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Frango e Catupiry", 65.00,"massa trad. + frango + catupiry","inteira",2);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Mussarela", 60.00,"massa trad. + queijo mussarela","inteira",1);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Brócolis", 44.00,"massa trad. + brócolis","inteira",1);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Quatro queijos", 100.00,"massa trad. + 4 queijos diferentes","inteira",2);
insert tb_pizzas(sabor,preco,ingredientes,tipo2,categorias_id) values("Romeu e Julieta", 60.00,"massa trad. + goiabada + queijo","inteira",3);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;
-- Pizzas com valor maior do que R$ 45,00.
SELECT * FROM tb_categorias inner join tb_pizzas on tb_categorias.id = tb_pizzas.categorias_id where tb_pizzas.preco>45;
-- Pizzas com valor entre R$ 50,00 e R$ 100,00.
SELECT * FROM tb_categorias inner join tb_pizzas on tb_categorias.id = tb_pizzas.categorias_id where tb_pizzas.preco BETWEEN 50 and 100;
-- Pizzas com a letra M no nome.
SELECT * FROM tb_categorias inner join tb_pizzas on tb_categorias.id = tb_pizzas.categorias_id where tb_pizzas.sabor like '%m%';
-- tab categorias & pizzas
SELECT * FROM tb_categorias inner join tb_pizzas on tb_categorias.id = tb_pizzas.categorias_id;
-- Pizzas com a mesma categoria
SELECT * FROM tb_categorias inner join tb_pizzas on tb_categorias.id = tb_pizzas.categorias_id where tb_pizzas.categorias_id BETWEEN 3 and 4;