use adsb;

create table grupo (
idGrupo int primary key auto_increment,
nome varchar(45),
descProj varchar(45)
);

create table professores (
idProf int primary key auto_increment,
nome varchar(45),
disciplina varchar(45)
)auto_increment = 1000;

create table alunos(
ra char(3) primary key,
fkGrupo int,
	constraint fkGrupoAlunos foreign key (fkGrupo) references grupo(idGrupo),
nome varchar(45),
email varchar(45)
);

create table avaliacao (
idAvaliacao int,
fkGrupo int,
fkProfessor int,
dtHora datetime,
nota float,
	constraint fkGrupoAvaliacao foreign key (fkGrupo) references grupo(idGrupo),
    constraint fkGrupoProfessores foreign key (fkProfessor) references professores(idProf),
    primary key (idAvaliacao, fkGrupo, fkProfessor)
);

insert into grupo (nome, descProj) values 
('Grupo 1', 'SILOS'),
('Grupo 2', 'SOJA');

insert into professores (nome, disciplina) values 
('JOUTAPÊ', 'ALGO RITMO'),
('FREEZE', 'PESCOÇO E INTERPETAÇÃO'),
('VIVI? AHN?', 'BANDO DE DOIDOS');

insert into alunos (ra, fkGrupo, nome, email) values
('121', 1, 'JACINTO', 'JACINTO@JACINTO'),
('312', 1, 'TOMAS', 'TOMAS@TOMAS'),
('423', 2, 'OSCAR', 'OSCAR@OSCAR'),
('534', 2, 'CUCA', 'CUCA@CUCA');

insert into avaliacao (fkGrupo, fkProfessor, dtHora, nota) values
(1, 1000, '2023-10-10 10:00:00', 8.5),
(1, 1001, '2023-10-10 10:00:00', 9.0),
(2, 1001, '2023-10-14 14:00:00', 8.0),
(2, 1002, '2023-10-14 14:00:00', 7.5),
(1, 1002, '2023-10-10 10:00:00', 8.8);

select * from avaliacao;

select * from grupo;

select * from professores;

select * from alunos;

select * from grupo join alunos
	on fkGrupo = idGrupo;
    
select avg(nota) from avaliacao;

select max(nota) as MAXIMO, min(nota) as MINIMO from avaliacao;

select sum(nota) from avaliacao;

select a.dtHora, p.*, g.* from avaliacao as a join professores as p
	on fkProfessor = idProf
		join grupo as g
			on fkGrupo = idGrupo;
            
select a.dtHora, p.*, g.* from avaliacao as a join professores as p
	on fkProfessor = idProf
		join grupo as g
			on fkGrupo = idGrupo
				where idGrupo = 1;
                
select g.nome from avaliacao as a join professores as p
	on fkProfessor = idProf
		join grupo as g
			on fkGrupo = idGrupo
				where idProf = 1001;
                
select a.dtHora, al.*, p.*, g.* from avaliacao as a join professores as p
	on fkProfessor = idProf
		join grupo as g
			on fkGrupo = idGrupo
				join alunos as al
					on al.fkGrupo = g.idGrupo;
                    
select distinct nota from avaliacao;

select p.nome, avg(nota), sum(nota) from avaliacao as a
	join professores as p
		on fkProfessor = idProf
			group by (idProf);
            
select g.nome, avg(nota), sum(nota) from avaliacao as a
	join grupo as g
		on fkGrupo = idGrupo
			group by (idGrupo);

select p.nome, max(nota), min(nota) from avaliacao as a
	join professores as p
		on fkProfessor = idProf
			group by (idProf);
            
select g.nome, max(nota), sum(nota) from avaliacao as a
	join grupo as g
		on fkGrupo = idGrupo
			group by (idGrupo);