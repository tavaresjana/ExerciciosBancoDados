CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
produtos varchar(255),
qtdEstoque int,
primary key (id)
);

INSERT tb_categorias (produtos,qtdEstoque) VALUES ("Telha",1850);
INSERT tb_categorias (produtos,qtdEstoque) VALUES ("Piso",4958);
INSERT tb_categorias (produtos,qtdEstoque) VALUES ("Material Hidraulico",2356);
INSERT tb_categorias (produtos,qtdEstoque) VALUES ("Máquinas",2356);
INSERT tb_categorias (produtos,qtdEstoque) VALUES ("Tinta",2356);

CREATE TABLE tb_produtos(
id bigint auto_increment,
descricao varchar(255),
marca varchar(255),
preco decimal,
prontaEntrega boolean not null,
primary key (id),
ref_id bigint,
foreign key (ref_id) references tb_categorias (id)
);

INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Telha de Argila","TelhaNovex",600.00,true,1);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Telha de Vidro","TelhaQuebrex",1000.00,false,1);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Torneira","Lorenzeti",500.00,true,3);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Registro","Deca",350.00,true,3);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Cerâmica","sem marca",649.00,true,2);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Rejunte","Rejuntex",400.00,true,2);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Furadeira","Bosch",1600.00,true,4);
INSERT tb_produtos (descricao,marca,preco,prontaEntrega,ref_id) VALUES ("Tinta Branca","Suvinil",200.00,true,5);

-- produtos cujo valor seja maior do que R$ 100,00.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.ref_id where tb_produtos.preco>100;
-- produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.ref_id where tb_produtos.preco BETWEEN 70.00 and 150.00;
-- produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.ref_id where tb_produtos.descricao like '%c%';
-- unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.ref_id;
-- produtos que pertençam a uma categoria específica.
SELECT * FROM tb_categorias inner join tb_produtos on tb_categorias.id = tb_produtos.ref_id where tb_produtos.ref_id=3;