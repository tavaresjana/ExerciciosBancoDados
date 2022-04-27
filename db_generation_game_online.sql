-- criando o banco de dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- criando tabela classes
CREATE TABLE tb_classes (
id bigint auto_increment,
classe varchar (255) not null,
especialidade varchar (255) not null,
PRIMARY KEY (id)
);

-- criando tabela personagens
CREATE TABLE tb_personagens (
id bigint auto_increment,
nome varchar (255),
terraNatal varchar (255),
poderAtaque int,
defesa int,
PRIMARY KEY (id),
classes_id bigint,
FOREIGN KEY (classes_id) references tb_classes (id)
);
-- inserindo 5 registros na tabela classes
INSERT tb_classes (classe, especialidade) VALUES ("Ladino","Roubar");
INSERT tb_classes (classe, especialidade) VALUES ("Bruxo","Queimar");
INSERT tb_classes (classe, especialidade) VALUES ("Assassino","Matar");
INSERT tb_classes (classe, especialidade) VALUES ("Mago","Curar");
INSERT tb_classes (classe, especialidade) VALUES ("Feiticeiro","Magia");

-- inserindo 8 registros na tabela personagens
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Shadow", "Vale da Morte", 3000, 1500,1);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Zuko", "Vale do Vulcão", 1700, 850,2);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Snow", "Vale do Winter", 3500, 1750,3);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Ang", "Vale do Ar", 300, 700,4);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Drogon", "Vale de Valyria", 4321, 2000,5);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("RobinHood", "Vale da Cruzada", 1000, 500,1);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Harry", "Vale de Godric's", 4321, 2000,2);
INSERT tb_personagens (nome, terraNatal, poderAtaque, defesa, classes_id) VALUES ("Sailor", "Vale de Moon", 625, 630,3);

-- (tab classes) 
SELECT * FROM tb_classes;
-- (tab personagens)
SELECT * FROM tb_personagens;
-- (ataque>2000)
SELECT * FROM tb_classes inner join tb_personagens on tb_classes.id = tb_personagens.classes_id where tb_personagens.poderAtaque>2000;
-- (defesa no valor entre 1000 e 2000)
 SELECT * FROM tb_classes inner join tb_personagens on tb_classes.id = tb_personagens.classes_id where tb_personagens.defesa BETWEEN 1000 and 2000;
-- (personagens com letra 'c' no nome)
SELECT * FROM tb_classes inner join tb_personagens on tb_classes.id = tb_personagens.classes_id where tb_personagens.nome like '%c%';
-- (tab classes & personagens)
SELECT * FROM tb_classes inner join tb_personagens on tb_classes.id = tb_personagens.classes_id;
-- (tab classes & personagens mostrando apenas um tipo de classe)
SELECT * FROM tb_classes inner join tb_personagens on tb_classes.id = tb_personagens.classes_id where tb_personagens.classes_id=5;