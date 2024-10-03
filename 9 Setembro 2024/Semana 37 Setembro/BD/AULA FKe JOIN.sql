-- aula do nosso primeiro join

create database sprint2b;

use sprint2b;


-- primeiro se cria a tabela que não tem fk
create table empresa (
idEmpresa int primary key auto_increment,
nome varchar(45),
responsavel char(45)
) auto_increment = 100;

insert into empresa (nome) values
('c6 bank'),
('stefanini');

select * from empresa; 

create table aluni (
ra char(8) primary key,
nome varchar(45),
telefone char(12),
fkEmpresa int, -- igual ao idEmpresa da tablea empresa
constraint fkAlunoEmpresa foreign key (fkEmpresa)
	references empresa(idEmpresa)
);

insert into aluni (ra, nome, fkEmpresa) values
('01242014','Romulo',100),
('01242017','Mathias',101),
('01242050','Viviane',100);

select * from aluni;

-- JOIN = inner join = junção entre duas tabelas
-- exibir o nome do aluno e sua respectiva empresa (nome);
select a.nome as NomeAluno,
	e.nome as 'Nome Empresa' 
	from aluni as a join empresa as e -- todo join sem exceção tem ON = dois campos que se conectam
	on idEmpresa = fkEmpresa
    where e.nome = 'c6 bank';