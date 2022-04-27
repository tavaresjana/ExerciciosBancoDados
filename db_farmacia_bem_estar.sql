-- criando banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- criando tabela categorias
CREATE TABLE tb_categorias(
id bigint auto_increment,
vendaComReceita boolean not null,
setor varchar(255),
PRIMARY KEY (id)
);

-- inserindo dados da tabela categoria
INSERT tb_categorias (vendaComReceita, setor) VALUES (true,"Farmácia");
INSERT tb_categorias (vendaComReceita, setor) VALUES (false,"Higiene");
INSERT tb_categorias (vendaComReceita, setor) VALUES (false,"Beleza");
INSERT tb_categorias (vendaComReceita, setor) VALUES (false,"Perfumaria");
INSERT tb_categorias (vendaComReceita, setor) VALUES (false,"Conveniência");

-- criando tabela produtos
CREATE TABLE tb_produtos (
id bigint auto_increment,
produto varchar (255),
descricao varchar (255),
preco decimal,
estoque int,
generico boolean not null,
primary key (id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias (id)
);
-- inserindo dados da tabela produtos
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Remédio","Neosadina", 5.00, 5000,false,1);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Remédio","Diane35", 65.00, 6000,true,1);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Shampoo","kit Cabelos cacheados", 49.00, 6000,false,4);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Condicionador","kit Cabelos cacheados", 45.00,5549,false,4);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Batom","rosa", 35.00, 200,false,3);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Escova","de dente", 20.00, 6000,false,2);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Chiclete","Trident Menta", 7.00, 50,false,5);
INSERT tb_produtos (produto,descricao,preco,estoque,generico,categorias_id) VALUES ("Chiclete","Trident Morango", 7.00, 49,false,5);

-- tab categorias
SELECT * FROM tb_categorias;
-- tab produtos
SELECT * FROM tb_produtos;
-- produtos com valor > 50
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.preco>50;
-- produtos com valor entre 5 e 60
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.preco BETWEEN 5.00 and 60.00;
-- produtos com a letra c
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.descricao like '%c%';
-- (tab categorias & produtos)
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id;
-- produtos que pertencem a mesma categoria
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.categorias_id=5; 