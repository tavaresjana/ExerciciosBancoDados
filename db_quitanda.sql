create database db_quitanda;
use db_quitanda;
create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);
/* aqui estavam as informações da tab_categoria
insert tb_categoria(descricao,ativo)  values("tuberculos", true);
*/
select * from tb_categoria;
create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
qtProduto int not null,
primary key (id),
categoria_id bigint,
foreign key (categoria_id) references tb_categoria (id)
);
insert tb_produtos(nome, preco, qtProduto, categoria_id)  values("Abacaxi", 15.00,12,1);
insert tb_produtos(nome, preco, qtProduto, categoria_id)  values("Abóbora", 58.00,15,2);
insert tb_produtos(nome, preco, qtProduto, categoria_id)  values("Alface", 55.00,60,3);
insert tb_produtos(nome, preco, qtProduto, categoria_id)  values("Alecrim", 1.000,200,4);
insert tb_produtos(nome, preco, qtProduto, categoria_id)  values("Aipim", 300.00,150,5);

-- (tab produtos) 
select * from tb_produtos;
-- (tab categoria) 
select * from tb_categoria;
-- (tab produtos & categoria) 
select*from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
-- (valor > 50)
select*from tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.preco>50;
-- (produtos que contém a letra a)
 select*FROM tb_categoria inner join tb_produtos on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.nome like '%a%';
-- (atualização)
update tb_produtos SET preco = 39.00 where id=4;