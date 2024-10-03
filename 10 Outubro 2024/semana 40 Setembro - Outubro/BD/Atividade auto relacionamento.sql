create database AlunoProjeto;

use AlunoProjeto;

create table projeto(
idProjeto int primary key auto_increment,
nome varchar(45),
descricao varchar(200)
);

create table Alunos(
ra char(8),
fkProjeto int,
primary key (ra, fkProjeto),
nome varchar (45),
telefone char(9),
foreign key (fkProjeto) references projeto(idProjeto),
fkRepresentante char(8),
foreign key (fkRepresentante) references Alunos(ra)
);

insert into Projeto (nome, descricao) values
('SILOFODAO', 'PROJETO SOBRE SILOS MUITO FODAS'),
('PROJETO GENERICO', 'PROJETO QUE É MUITO PIOR QUE O DO SILO, JÁ QUE NÃO TEMOS CRIATIVIDADE');

select * from projeto;

insert into alunos values
('01242001', 1, 'EU', '123456789',null),
('01242002', 1, 'MARCELOMARCELAO', '223456789',null),
('01242003', 1, 'SHIRLEY', '323456789',null),
('01242004', 2, 'PERDEDOR', '423456789',null),
('01242005', 2, 'LOSER', '523456789',null),
('01242006', 2, 'FRACO', '623456789',null);

alter table Alunos drop foreign key Alunos_ibfk_2;

alter table Alunos drop primary key;

alter table Alunos modify column ra char(8) primary key;

alter table Alunos add constraint fkAlunosRepresentante
FOREIGN KEY (fkRepresentante) references Alunos(ra);

select * from alunos;

select * from projeto;

select a.nome as ALUNO, p.nome as projeto
 from alunos as a join projeto as p
 on idProjeto = fkProjeto;


update alunos set fkRepresentante = '01242001'
	where ra = '01242001';
    
update alunos set fkRepresentante = '01242001'
	where ra = '01242002';

update alunos set fkRepresentante = '01242001'
	where ra = '01242003';

update alunos set fkRepresentante = '01242003'
	where ra = '01242004';
    
update alunos set fkRepresentante = '01242003'
	where ra = '01242005';
    
update alunos set fkRepresentante = '01242003'
	where ra = '01242006';
    
select * from alunos;    

select a.*, r.nome as Representante
	from alunos as a join alunos as r 
    on r.fkRepresentante = a.ra;

select a.*, p.nome as Projeto 
    from alunos as a join projeto as p 
    on a.fkprojeto = p.idProjeto
    where p.nome like '%silo%';


create database campanha;

use campanha;

create table organizador (
idOrganizador int primary key auto_increment,
nome varchar(45),
rua varchar(45),
bairro varchar(45),
email varchar(45)
)auto_increment = 30;

create table campanha (
idCampanha int primary key auto_increment,
fkOrganizador int,
foreign key (fkOrganizador) references organizador (idOrganizador),
categoria varchar(45),
instituicao varchar(45),
constraint chkInstituicao 
	check (instituicao in ('instituicao 1', 'instituicao 2')),
dtFinal date
) auto_increment = 500;


alter table organizador add column fkExperiente int,
	add constraint fkOrganiExperi foreign key (fkExperiente) 
    references organizador(idOrganizador); 
    
insert into organizador (nome, rua, bairro, email, fkExperiente) values 
('jao', 'sal', 'limoeiro', 'jaomoscante@silva.com', null),
('cebolacio', 'vinagre', 'limoeiro', 'cebola@silva.com', null),
('Comilona', 'limao', 'limoeiro', 'magrali@silva.com', null);

select * from organizador;

insert into campanha (fkOrganizador, categoria, instituicao, dtFinal) values
(30, 'alimento', 'instituicao 1', '2024-09-30'),
(30, 'higiene', 'instituicao 2', '2024-10-01'),
(31, 'alimento', 'instituicao 1', '2024-09-30'),
(31, 'saúde', 'instituicao 1', '2024-08-15'),
(32, 'dinheiro', 'instituicao 2', '2024-10-11');

select * from campanha;

update organizador set fkExperiente = 30
	where idOrganizador = 30;
    
update organizador set fkExperiente = 30
	where idOrganizador = 31;
    
update organizador set fkExperiente = 30
	where idOrganizador = 32;
    
select * from organizador;

select o.*, c.* 
	from organizador as o join campanha as c
    on c.fkorganizador = o.idOrganizador;
    
select o.*, c.* 
	from organizador as o join campanha as c
    on c.fkorganizador = o.idOrganizador
    where o.nome = 'jao';
    
SELECT 
    n.idOrganizador AS ID_NOVATO, 
    n.nome AS NOVATO, 
    e.idOrganizador AS ID_EXPERIENTE, 
    e.nome AS EXPERIENTE
FROM 
    organizador AS n 
JOIN 
    organizador AS e 
ON 
    n.fkexperiente = e.idOrganizador
WHERE 
    n.idOrganizador > 30;

