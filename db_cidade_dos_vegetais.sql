CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar (255),
ativo boolean not null,
PRIMARY KEY (id)
);
INSERT tb_categorias (descricao,ativo) VALUES ("vegetais",true);
INSERT tb_categorias (descricao,ativo) VALUES ("legumes",true);
INSERT tb_categorias (descricao,ativo) VALUES ("fruta",true);

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar (255),
preco decimal,
qtd int,
cor varchar(255),
PRIMARY KEY (id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias (id)
);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("alface",43.00,50,"verde",1);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("couve",105.00,56,"verde",1);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("espinafre",56.00,66,"verde",1);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("repolho",205.00,89,"verde",1);

INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("chuchu",155.00,45,"verde",2);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("pepino",99.00,42,"verde",2);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("pimentão",67.00,126,"amarelo",2);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("abóbora",42.00,56,"verde",2);

INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("pêra",2.00,58,"verde",3);
INSERT tb_produtos (nome,preco,qtd,cor,categorias_id) VALUES ("maçã",4.00,59,"verde",3);

-- Faça um SELECT que retorne todos os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.preco>50;
-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.preco BETWEEN 50.00 and 150.00;
-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.nome like '%c%';
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id;
-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.categorias_id where tb_produtos.categorias_id=3;