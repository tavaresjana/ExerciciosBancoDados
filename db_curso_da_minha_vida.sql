CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint auto_increment,
area varchar (255),
ativo boolean not null,
primary key (id)
);

INSERT tb_categorias (area,ativo) VALUES ("tecnologia",true);
INSERT tb_categorias (area,ativo) VALUES ("humanidades",true);
INSERT tb_categorias (area,ativo) VALUES ("biologicas",true);
INSERT tb_categorias (area,ativo) VALUES ("desenvolvimento pessoal",true);
INSERT tb_categorias (area,ativo) VALUES ("idioma",true);

CREATE TABLE tb_cursos(
id bigint auto_increment,
nome varchar (255),
turma int,
nivel varchar (255),
preco decimal,
primary key (id),
ref_id bigint,
foreign key (ref_id) references tb_categorias (id)
);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("Powerpoint", 50,"Avançado",500.00,1);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("História da fotografia", 51,"Avançado",650.00,2);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("Dicas de entrevista", 40,"Avançado",50.00,4);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("Medicina reciclagem", 19,"Inciante",3500.00,3);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("Java", 52,"Avançado",1500.00,1);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("Espanhol", 22,"Intermediário",150.00,5);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("MySQL", 65,"básico ao avançado",700.00,1);
INSERT tb_cursos (nome, turma, nivel, preco, ref_id) VALUES ("Github", 53,"Avançado",70.00,1);

-- cursos cujo valor seja maior do que R$ 500,00.
SELECT * FROM tb_categorias inner join tb_cursos on tb_categorias.id = tb_cursos.ref_id where tb_cursos.preco>500.00;
-- cursos cujo valor esteja no intervalo R$ ,00 e R$ 1.000,00.
SELECT * FROM tb_categorias inner join tb_cursos on tb_categorias.id = tb_cursos.ref_id where tb_cursos.preco BETWEEN 600.00 and 1000.00;
-- cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_categorias inner join tb_cursos on tb_categorias.id = tb_cursos.ref_id where tb_cursos.nome like '%J%';
-- unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT * FROM tb_categorias inner join tb_cursos on tb_categorias.id = tb_cursos.ref_id;
-- cursos que pertençam a uma categoria específica
SELECT * FROM tb_categorias inner join tb_cursos on tb_categorias.id = tb_cursos.ref_id where tb_cursos.ref_id=1;