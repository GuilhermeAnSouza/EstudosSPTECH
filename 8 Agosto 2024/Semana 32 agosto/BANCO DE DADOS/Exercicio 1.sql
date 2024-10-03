-- EXERCICIO 1
CREATE DATABASE SPRINT1;

USE SPRINT1;

CREATE TABLE Atleta (
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into	Atleta values 
	('1', 'Atleta 1', 'Modalidade 1', '4'),
    ('2', 'Atleta 2', 'Modalidade 1', '1'),
    ('3', 'Atleta 3', 'Modalidade 2', '8'),
    ('4', 'Atleta 4', 'Modalidade 2', '0'),
    ('5', 'Atleta 5', 'Modalidade 3', '2'),
    ('6', 'Atleta 6', 'Modalidade 3', '3');

select * from Atleta;

select nome, qtdMedalha from Atleta;

select * from Atleta
	where modalidade = 'modalidade 1';
    
select * from Atleta order by modalidade;

select * from Atleta order by qtdMedalha desc;

select * FROM Atleta
	where nome like '%s%';

select * FROM Atleta
	where nome like 'A%';
    
select * FROM Atleta
	where nome like '%o';
    
select * FROM Atleta
	where nome like '%r_';
    
drop table Atleta;

-- EXERCICIO 2

use sprint1;

create table Musica (
idMusica int primary key,
título varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into	Musica values 
	('1', 'musica 1', 'artista 1', 'genero 1'),
    ('2', 'musica 2', 'artista 2', 'genero 1'),
    ('3', 'musica 3', 'artista 1', 'genero 2'),
    ('4', 'musica 4', 'artista 3', 'genero 3'),
    ('5', 'musica 5', 'artista 3', 'genero 4'),
    ('6', 'musica 6', 'artista 2', 'genero 2'),
    ('7', 'musica 7', 'artista 4', 'genero 5');
    
select * from Musica;

select título, artista from Musica;

select * from Musica
	where genero = 'genero 1';
    
select * from Musica
	where artista = 'artista 1';
    
select * from Musica order by título;

select * from Musica order by artista desc;

select * from Musica
	where título like 'm%';

select * from Musica
	where artista like '%1';
    
select * from Musica
	where genero like '_e%';


select * from Musica
	where título like '% _';
    
drop table Musica;

-- exercicio 3

use spring1;

create table Filme (
idFilme int primary key,
título varchar(50),
genero varchar(40),
diretor varchar(40)
);

insert into	Filme values 
	('1', 'filme 1', 'genero 1', 'diretor 1'),
    ('2', 'filme 2', 'genero 2', 'diretor 2'),
    ('3', 'filme 3', 'genero 3', 'diretor 3'),
    ('4', 'filme 4', 'genero 2', 'diretor 1'),
    ('5', 'filme 5', 'genero 4', 'diretor 4'),
    ('6', 'filme 6', 'genero 4', 'diretor 1'),
    ('7', 'filme 7', 'genero 3', 'diretor 5');
 
 select * from filme;
 
 select título, diretor from filme;
 
 select * from filme
	where genero = 'genero 2';

 select * from filme
	where diretor = 'diretor 1';

select * from filme order by título;

select * from filme order by diretor desc;

select * from filme
	where título like 'f%';

select * from filme
	where diretor like '%1';
    
select * from filme
	where genero like '_e%';
    
select * from filme
	where título like '% _';

drop table Filme;

-- exercicio 4

use spring1;

create table Professor (
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

insert into	Professor values 
	('1', 'Viviane, A foda', 'banco de dados', '1983-10-13'),
    ('2', 'Professor 1', 'banco de dados', '1989-7-29'),
    ('3', 'Professor 2', 'especialidade 1', '1989-12-09'),
    ('4', 'Professor 3', 'especialidade 2', '2000-2-04'),
    ('5', 'Professor 4', 'especialidade 3', '1973-2-11'),
    ('6', 'Professor 5', 'especialidade 4', '1969-5-13');

select * from professor;

select especialidade from professor;

select * from professor
	where especialidade = 'banco de dados';

select * from professor order by dtNasc desc;

select * from professor
	where nome like 'v%';

select * from professor
	where nome like '%a';
    
select * from professor
	where nome like '_i%';

select * from professor
	where nome like '%d_';
    
drop table professor;

-- exercicio 5

use sprint1;

create table curso (
idCurso int primary key,
nome varchar(50),
sigla char(3),
coordenador varchar(40)
);

insert into	curso values 
	('1', 'Curso 1', 'ads', 'coordenador 1'),
    ('2', 'Curso 2', 'cco', 'coordenador 2'),
    ('3', 'Curso 3', 'ssi', 'coordenador 3');

select * from curso;

select coordenador from curso;

select * from curso
	where sigla = "ads";
    
select * from curso order by nome;

select * from curso order by coordenador desc;

select * from curso
	where nome like 'c%';
    
select * from curso
	where nome like '%1';
    
select * from curso
	where nome like '_u%';
    
select * from curso
	where nome like '%a_';
    
drop table curso;

-- Exercicio 6

use sprint1;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Revista (
    idRevista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    Categoria VARCHAR(30)
);

INSERT INTO Revista (nome) VALUES
('revista 1'),
('revista 2'),
('revista 3'),
('revista 4');

select * from revista;

update Revista set Categoria = 'categoria 1' where nome = 'revista 1';
update Revista set Categoria = 'categoria 2' where nome = 'revista 2';
update Revista set Categoria = 'categoria 3' where nome = 'revista 3';
update Revista set Categoria = 'categoria 4' where nome = 'revista 4';

select * from revista;

INSERT INTO Revista (nome, categoria) VALUES
('revista 5', 'categoria 5'),
('revista 6', 'categoria 6'),
('revista 7', 'categoria 7');

select * from revista;

desc revista;

alter table revista modify column categoria varchar(40);

desc revista;

alter table revista add column periodicidade varchar(15);

select * from revista;

drop database sprint1