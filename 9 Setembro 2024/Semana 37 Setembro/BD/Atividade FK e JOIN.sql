create database Spint2;

use Spint2;


create table atleta (
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into atleta (nome, modalidade, qtdMedalha) values
('João Silva', 'Atletismo', 3),
('Maria Oliveira', 'Atletismo', 1),
('Carlos Souza', 'Natação', 5),
('Ana Costa', 'Natação', 2),
('Pedro Santos', 'Judô', 4);

create table pais (
idPais int primary key auto_increment,
nome varchar(30),
capital varchar(40)
);

INSERT INTO pais (nome, capital) VALUES
('Brasil', 'Brasília'),
('Estados Unidos', 'Washington D.C.'),
('França', 'Paris'),
('Japão', 'Tóquio');

alter table atleta add column fkPais int,
add constraint fkAtletaPais foreign key (fkPais)
		references pais(idpais);
        
update atleta set fkpais = 1
	where idAtleta = 1;
    
update atleta set fkpais = 2
	where idAtleta = 2;
    
update atleta set fkpais = 3
	where idAtleta = 3;
    
update atleta set fkpais = 4
	where idAtleta = 4;
    
update atleta set fkpais = 4
	where idAtleta = 5;
    
 select * from atleta join pais -- todo join sem exceção tem ON = dois campos que se conectam
	on idPais = fkPais;   
    
select a.nome as NomeAtleta,
	p.nome as NomePais 
	from atleta as a join pais as p -- todo join sem exceção tem ON = dois campos que se conectam
	on idPais = fkPais;
		
    
select * from atleta join pais 
	on idPais = fkPais
	where capital = 'Toquio';

create table musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica (titulo, artista, genero) values
('Bohemian Rhapsody', 'Queen', 'Rock'),
('We Will Rock You', 'Queen', 'Rock'),
('Shape of You', 'Ed Sheeran', 'Pop'),
('Castle on the Hill', 'Ed Sheeran', 'Pop'),
('Smells Like Teen Spirit', 'Nirvana', 'Grunge');

create table album (
idAlbum int primary key auto_increment,
nome varchar(45),
tipo varchar(15), 
constraint chktipo check (tipo in ('digital','fisico')),
dtLancamento date	
);

insert into Album (nome, tipo, dtLancamento) values
('A Night at the Opera', 'físico', '1975-11-21'),  
('Divide', 'digital', '2017-03-03'),              
('Nevermind', 'físico', '1991-09-24');

select * from musica;

select * from album;

alter table musica add column fkAlbum int,
	add constraint fkMusicaAlbum foreign key (fkAlbum)
	references album(idAlbum);
    
update musica set fkAlbum = 1
	where idMusica = 1;
    
update musica set fkAlbum = 1
	where idMusica = 2;
    
update musica set fkAlbum = 2
	where idMusica = 3;
    
update musica set fkAlbum = 2
	where idMusica = 4;
    
update musica set fkAlbum = 3
	where idMusica = 5;
    

 select * from musica join album
	on idAlbum = fkAlbum;   

select musica.titulo, album.nome  
	from musica join Album
	on idAlbum = fkAlbum;
    
select musica.titulo, album.nome  
	from musica join Album
	on idAlbum = fkAlbum
    where album.nome = 'divide';
    
    
