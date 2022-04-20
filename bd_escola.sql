CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_aluno (

id bigint auto_increment,

professor varchar (255),
turma varchar (255),
matricula int,
nome varchar (255),
nota int,

PRIMARY KEY (id)
);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profº Marcel", "5º A", 1231, "Almodovar", 5);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profº Marcel", "5º A", 1232, "Chino Darin", 8);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profª Fabi", "5º B", 1233, "Selton Melo", 3);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profª Fabi", "5º B", 1234, "Nolan", 9);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profª Camis", "5º C", 1235, "Ben Affleck", 6);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profª Camis", "5º C", 1236, "Ursula Corbero", 7);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profº Andy", "5º D", 1237, "Caio Castro", 4);
INSERT INTO tb_aluno(professor, turma, matricula, nome, nota)
VALUES ("Profº Andy", "5º D", 1238, "Darín", 10);

UPDATE tb_aluno SET nota =10 WHERE id=4;

SELECT * FROM tb_aluno;
-- SELECT id, professor, turma, matricula, nome, nota FROM tb_aluno WHERE nota<7
-- SELECT id, professor, turma, matricula, nome, nota FROM tb_aluno WHERE nota>=7