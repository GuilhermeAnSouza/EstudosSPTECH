-- exercicio 1
USE SPRINT1;

CREATE TABLE ATLETA (
IdAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into atleta (nome, modalidade, qtdMedalha) values
	('atleta 1', 'modalidade 1', '3'),
    ('atleta 2', 'modalidade 1', '8'),
    ('atleta 3', 'modalidade 2', '4'),
    ('atleta 4', 'modalidade 2', '1'),
    ('atleta 5', 'modalidade 3', '5'),
    ('atleta 6', 'modalidade 3', '9');

select * from atleta;

update atleta set qtdmedalha = '100' 
	where idatleta = '1';
    
update atleta set qtdmedalha = '56'
	where idatleta in (2,3);
    
update atleta set nome = 'joao'
	where idatleta = '4';
    
alter table atleta add column dtNasc date;

update atleta set dtNasc = '1984-04-01'
	Where idatleta = '1';

update atleta set dtNasc = '1994-12-30'
	Where idatleta = '2';

update atleta set dtNasc = '1999-09-28'
	Where idatleta = '3';

update atleta set dtNasc = '2000-10-22'
	Where idatleta = '4';

update atleta set dtNasc = '1993-05-04'
	Where idatleta = '5';

update atleta set dtNasc = '1980-07-19'
	Where idatleta = '6';

select * from atleta;

delete from atleta 
	where idatleta = '5';

select * from atleta
	where modalidade != 'natação';
    
select * from atleta
	where qtdMedalha >= 3;

alter table atleta modify column modalidade varchar(60);

desc atleta;


truncate atleta;

-- exercicio 2
USE SPRINT1;

CREATE TABLE MUSICA (
IdMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica (titulo, artista, genero) VALUES 
	('musica 1', 'artista 1', 'genero 1'),
    ('musica 2', 'artista 1', 'genero 2'),
    ('musica 3', 'artista 2', 'genero 3'),
    ('musica 4', 'artista 3', 'genero 4'),
    ('musica 5', 'artista 4', 'genero 4'),
    ('musica 6', 'artista 4', 'genero 5'),
    ('musica 7', 'artista 5', 'genero 6'),
    ('musica 8', 'artista 6', 'genero 6');

select * from musica;

alter table musica add column curtidas int;

update musica set curtidas = '12'
	where idmusica = '1';

update musica set curtidas = '102'
	where idmusica = '2';

update musica set curtidas = '203'
	where idmusica = '3';

update musica set curtidas = '50'
	where idmusica = '4';

update musica set curtidas = '2'
	where idmusica = '5';

update musica set curtidas = '30'
	where idmusica = '6';

update musica set curtidas = '15'
	where idmusica = '7';

update musica set curtidas = '27'
	where idmusica = '8';	

alter table musica modify column artista varchar(80);

update musica set curtidas = '3'
	where idMusica = '1';
    
update musica set curtidas = '7'
	where idmusica in (2,3);

update musica set titulo = 'eduardo e monica'
	where idmusica = '5';

delete from musica 
	where idmusica = '4';
    
select * from musica 
	where genero != 'funk';
    
select * from musica
	where curtidas >= 20;

desc musica;

truncate musica;

-- exercicio 3

USE SPRINT1;

create table filme (
idfilme int primary key auto_increment,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

insert into filme (titulo, genero, diretor) values
('filme 1', 'genero 1', 'diretor 1'),
('filme 2', 'genero 2', 'diretor 2'),
('filme 3', 'genero 3', 'diretor 2'),
('filme 4', 'genero 3', 'diretor 2'),
('filme 5', 'genero 4', 'diretor 3'),
('filme 6', 'genero 5', 'diretor 4'),
('filme 7', 'genero 6', 'diretor 4');

select * from filme;

alter table filme add column protagonista varchar(50);

update filme set protagonista = 'protagonista 1'
	where idfilme = '1';
    
update filme set protagonista = 'protagonista 2'
	where idfilme = '2';

update filme set protagonista = 'protagonista 3'
	where idfilme = '3';
    
update filme set protagonista = 'protagonista 4'
	where idfilme = '4';

update filme set protagonista = 'protagonista 5'
	where idfilme = '5';

update filme set protagonista = 'protagonista 6'
	where idfilme = '6';

update filme set protagonista = 'protagonista 7'
	where idfilme = '7';

alter table filme modify column diretor varchar(150);

update filme set diretor = 'diretor atualizado'
	where idfilme='5';
    
update filme set diretor = 'diretor fodao'
	where idfilme in (2,7);

update filme set titulo = 'titulo atualizado'
	where idfilme = (6);
    
delete from filme
	where idfilme = '3';
    
select * from filme 
	where genero != 'suspense';

desc filme;

truncate filme;

-- exercicio 4

use sprint1;

create table professor (
idprof int primary key auto_increment,
nome varchar (50),
especialidade varchar(40),
dtNasc date
);

insert into professor (nome, especialidade, dtNasc) values
	('nome 1','especialidade 1', '1999-10-01'),
    ('nome 2','especialidade 1', '1990-01-04'),
    ('nome 3','especialidade 2', '1993-05-10'),
    ('nome 4','especialidade 2', '1978-09-22'),
    ('nome 5','especialidade 3', '1981-06-15'),
    ('nome 6','especialidade 3', '1999-11-11');
    
select * from professor;

alter table professor 
	add column funcao varchar(50),
    add constraint chk_funcao check (funcao in ('monitor', 'assistente', 'titular'));
    
update professor set funcao = 'monitor'
	where idprof = '1';

update professor set funcao = 'assistente'
	where idprof = '2';

update professor set funcao = 'titular'
	where idprof = '3';

update professor set funcao = 'monitor'
	where idprof = '4';

update professor set funcao = 'assistente'
	where idprof = '5';

update professor set funcao = 'titular'
	where idprof = '6';
    
select * from professor;

insert into professor (nome, especialidade, dtNasc, funcao) values
	('nome 7', 'especialidade 4', '1988-11-04', 'titular');
    
delete from professor
	where idprof = '5';
    
select * from professor 
	where funcao = 'titular';

select especialidade, dtnasc from professor 
	where funcao = 'monitor';

update professor set dtnasc = '2002-02-04'
	where idprof = '3';
    
truncate professor;
