create database hogwarts;

use hogwarts;

 create table casaHogwarts(
 idCasa int primary key auto_increment,
 nome varchar(45),
 nomeFundador varchar(45),
 profResponsavel varchar(45)
 );
 
 create table alunos (
 RA char(5) primary key,
 fkMonitor char(5),
	constraint fkMonitorRa foreign key (fkMonitor)
		references alunos(RA),
nome varchar(45),
jogador char(3),
constraint chkJogador 
	check (jogador in ('sim','não')),
dtInicio date,
dtTermino date,
pet varchar(45),
patrono varchar(45),
fkCasa int,
	constraint fkCasaAluno foreign key (fkCasa)
		references casaHogwarts(idCasa)
 );
 
 
 insert into casaHogwarts (nome, nomeFundador, profResponsavel) values
('Grifinória', 'Godric Gryffindor', 'Minerva McGonagall'),
('Sonserina', 'Salazar Slytherin', 'Severus Snape'),
('Corvinal', 'Rowena Ravenclaw', 'Filius Flitwick'),
('Lufa-Lufa', 'Helga Hufflepuff', 'Pomona Sprout');

insert alunos (RA, fkMonitor, nome, jogador, dtInicio, dtTermino, pet, patrono, fkCasa) values
('A1001', null, 'Harry Potter', 'sim', '1990-09-01', '1994-06-01', 'Coruja Hedwig', 'Cervo', 1),
('A1002', 'A1001', 'Ron Weasley', 'sim', '1991-09-01', '1995-06-01', 'Rato Perebas', 'Cachorro', 1),
('A1003', 'A1001', 'Hermione Granger', 'não', '1990-09-01', '1994-06-01', 'Gato Bichento', 'Lontra', 1),
('A1004', null, 'Draco Malfoy', 'sim', '1991-09-01', '1995-06-01', 'Coruja águia', 'Pavão', 2),
('A1005', 'A1001', 'Bananilson', 'não', '1991-09-01', '1995-06-01', null, null, 2),
('A1006', 'A1001', 'Maçãsilson', 'não', '1991-09-01', '1995-06-01', null, null, 2),
('A1007', 'A1001', 'Pera da silva', 'não', '1991-09-01', '1995-06-01', 'Sapilson Trevoso', null, 3),
('A1008', 'A1003', 'Jacinto', 'não', '1992-09-01', '1996-06-01', 'Lebre', null, 3),
('A1009', null, 'Pão com Geleia', 'sim', '1992-09-01', '1996-06-01', 'Cavalo', null, 3),
('A1010', null, 'Farofilson', 'sim', '1990-09-01', '1994-06-01', 'Kleber', null, 4),
('A1011', 'A1003', 'cuscuzilson', 'não', '1990-09-01', '1994-06-01', 'Garfield', null, 4),
('A1012', null, 'Torradeira Wallita', 'sim', '1990-09-01', '1994-06-01', 'Lobo', null, 4);

select * from alunos 
	where jogador = 'sim';
    
select nome as 'Nome Aluno', dtInicio as 'data inicio', patrono from alunos
	where fkCasa = '4';

select a.nome, a.pet, c.nome as 'Casa' from alunos as a
	join casaHogwarts as c
		on a.fkCasa = c.idCasa;

update alunos set fkMonitor = 'a1004'
	where ra = 'a1005';
    
update alunos set fkMonitor = 'a1004'
	where ra = 'a1006';
    
update alunos set fkMonitor = 'a1007'
	where ra = 'a1008';
    
update alunos set fkMonitor = 'a1007'
	where ra = 'a1009';
    
update alunos set fkMonitor = 'a1010'
	where ra = 'a1011';
    
update alunos set fkMonitor = 'a1010'
	where ra = 'a1012';
    
select a.nome as ALUNO, m.nome as MONITOR, c.nome as CASA from alunos as a
	join alunos as m
		on a.fkMonitor = m.RA
			join casaHogwarts as c
				on m.fkCasa = c.idCasa;

select a.nome, ifnull(c.nome,'aluno Não alocado') as 'NOME ALUNO', a.jogador, ifnull(a.pet,'nenhum pet') AS PET, ifnull(a.patrono,'sem memorias felizes') as patrono from alunos as a
	join casaHogwarts as c
		on a.fkCasa = c.idCasa;

select a.nome, a.dtTermino, c.* from alunos as a
	join casaHogwarts as c
		on a.fkCasa = c.idCasa;
        
select nome, ifnull(fkMonitor, 'tem caroço nesse angu') as Monitor from alunos;

select a.nome, ifnull(m.nome, 'aluno não iniciou o curso de Hogwarts') as Monitor from alunos as a
	 left join alunos as m
		on m.ra = a.fkMonitor;
        
drop database hogwarts;