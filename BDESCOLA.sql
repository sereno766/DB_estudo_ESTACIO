
create table aluno (
id_aluno SERIAL PRIMARY KEY
, nome varchar(120) not null

);
create table materia (
id_materia serial primary key
, nome_materia varchar(120) not null
, nota decimal(4,2)
, id_aluno int not null
, foreign key (id_aluno)references aluno (id_aluno)
, unique (id_aluno,nome_materia)
);


insert into aluno (nome) values ('pedro jose'),('felipe augusto');
select * from aluno;

-- Matérias para Pedro José (id_aluno = 1)
INSERT INTO materia (nome_materia, nota, id_aluno) VALUES
    ('Matemática', 8.5, 1),
    ('Português', 7.8, 1),
    ('Ciências', 9.2, 1);

-- Matérias para Felipe Augusto (id_aluno = 2)
INSERT INTO materia (nome_materia, nota, id_aluno) VALUES
    ('História', 6.5, 2),
    ('Geografia', 8.0, 2),
    ('Física', 7.5, 2);

	select * from aluno, materia;