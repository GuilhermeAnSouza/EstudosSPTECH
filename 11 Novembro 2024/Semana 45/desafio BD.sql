create database atividade11;

use atividade11;

create table departamento (
idDepto int primary key,
nomeDepto varchar(45),
fkGerente int, 
dataInicioGer date
);

create table funcionario (
idFunc int primary key,
nomeFunc varchar(30),
salario decimal (10,2),
sexo varchar(45),
fkSupervisor int,
dataNasc date,
fkDepto int,
	constraint fkFuncionarioDepto foreign key (fkDepto) references departamento(idDepto)
);

create table projeto (
idProj int primary key,
nomeProj varchar(45),
localProj varchar(45),
fkDepto int,
	constraint fkProjetoDepto foreign key (fkDepto) references departamento(idDepto)
);

create table funcProj (
fkFunc int,
	foreign key (fkFunc) references funcionario(idFunc),
fkProj int,
	foreign key (fkProj) references projeto(idProj),
horas decimal(3,1),
primary key(fkFunc, fkProj)
);


insert into departamento values
(105,'Pesquisa', 2, '2008-05-22'),
(104,'Administração', 7, '2015-01-01'),
(101,'Matriz', 8, '2001-06-19');

insert into funcionario values
(1, 'Joao Silva', 3500.00, 'm', 2, '1985-01-09', 105),
(2, 'Fernando Wong', 4500.00, 'm', 8, '1975-12-08', 105),
(3, 'Alice Sousa', 2500.00, 'f', 7, '1988-01-19', 104),
(4, 'Janice Morais', 4300.00, 'f', 8, '1970-06-20', 104),
(5, 'Ronaldo Lima', 3800.00, 'm', 1, '1982-09-15', 105),
(6, 'Joice Leite', 2500.00, 'f', 1, '1992-07-31', 105),
(7, 'Antonio Pereira', 2500.00, 'm', 4, '1989-03-29', 104),
(8, 'Juliano Brito', 5500.00, 'm', NULL, '1957-11-10', 101);

insert into projeto (idProj, nomeProj, localProj, fkDepto) values
(1, 'Produto X', 'Santo André', 105),
(2, 'Produto Y', 'Itu', 105),
(3, 'Produto Z', 'São Paulo', 105),
(10, 'Informatização', 'Mauá', 104),
(20, 'Reorganização', 'São Paulo', 101),
(30, 'Benefícios', 'Mauá', 104);

insert into funcProj (fkFunc, fkProj, horas) values
(1, 1, 32.5),
(1, 2, 7.5)	,
(5, 3, 40.0),
(6, 1, 20.0),
(6, 2, 20.0),
(2, 2, 10.0),
(2, 3, 10.0),
(2, 10, 10.0),
(2, 20, 10.0),
(3, 30, 30.0),
(3, 10, 10.0),
(7, 10, 35.0),
(7, 30, 5.0),
(4, 30, 20.0),
(4, 20, 15.0),
(8, 20, NULL);

select * from departamento;

select * from funcionario;

select * from projeto;

select * from funcProj;

insert into funcionario values
(null, 'Cecilia Ribeiro', 2800.00, 'f', null, '1980-04-05', 104);
-- Não funciona pois o ID não pode ser NULL

insert into funcionario values
(3, 'Alice Sousa', 2800.00, 'f', 4, '1980-04-05', 104);
-- Não funciona pois o ID já está em uso

insert into funcionario values
(9, 'Cecilia Ribeiro', 2800.00, 'f', 4, '1980-04-05', 107);
-- Não funciona pois não existe o idDepto 107

insert into funcionario values
(9, 'Cecilia Ribeiro', 2800.00, 'f', 4, '1980-04-05', 104);
-- Funcionou pois agora as informações não tem conflito

delete from funcProj
	where fkFunc = 3;

delete from funcProj
	where fkFunc = 10;
    
-- consegui excluir o 3. O comando para excluir 10 funcionou, mas como não tem funcionário com id 10, nada aconteceu.

delete from funcProj
	where fkFunc = 4;
-- Funcionou, pois nada impede 
    
delete from funcProj
	where fkFunc = 2;
-- Funcionou, pois nada impede

update funcionario set salario = 2800
	where idFunc = 3;
-- Funcionou, pois nada impede
    
update funcionario set idFunc = 101
	where idFunc = 3;
-- Funcionou, pois nada impede

update funcionario set idFunc = 107
	where idFunc = 3;
-- Funcionou, pois nada impede    

select * from funcionario;
    
select dataNasc, salario from funcionario
	where idFunc = 1;

select salario from funcionario;

select distinct salario from funcionario;

select * from funcionario
	order by nomeFunc;

select * from funcionario
	order by salario desc;

select * from funcionario 
	where salario between 2000 and 4000;
    
select nomeFunc, salario from funcionario
	where nomeFunc like 'j%';
    
select nomeFunc, salario from funcionario
	where nomeFunc like '%a';
    
select nomeFunc from funcionario
	where nomeFunc like '__n%';
    
select nomeFunc, dataNasc from funcionario
	where nomeFunc like '%s____';
    
select f.* from funcionario as f join departamento
	on fkDepto = idDepto
		where nomeDepto = 'Pesquisa';
        
select f.* from funcionario as f join departamento
	on fkDepto = idDepto
		where nomeDepto = 'Pesquisa' and salario > 3500;
        
select f.* from funcionario as f join departamento
	on fkDepto = idDepto
		where nomeDepto = 'Pesquisa' and nomeFunc like "j%";
        
alter table funcionario add constraint fkFuncSuper foreign key (fkSupervisor) references funcionario(idFunc);
        
select f.idFunc as idFuncionario, f.nomeFunc, s.idFunc as idSupervisor, s.nomeFunc from funcionario as f join funcionario as s
	on f.fkSupervisor = s.idFunc;
    
alter table departamento add constraint fkGerenteDepartamento foreign key (fkGerente) references funcionario(idFunc);    

select idProj, idDepto, nomeFunc, dataNasc from projeto join departamento
	on fkDepto = idDepto
		join funcionario
			on fkGerente = idFunc
				where localProj = 'São Paulo';
                
select idFunc, nomeFunc, nomeProj, horas from funcProj join funcionario
	on fkFunc = idFunc
		join projeto
				on fkProj = idProj;

select nomeFunc from funcionario 
	where dataNasc < '1980-01-01';
    
select distinct salario from funcionario;

select count(distinct localProj) from projeto;

select avg(salario), sum(salario) from funcionario;

select idDepto, avg(salario), sum(salario) from funcionario join departamento 
	on fkDepto = idDepto group by idDepto;

select idDepto, max(salario), min(salario) from funcionario join departamento 
	on fkDepto = idDepto group by idDepto;
    
select * from funcionario;    

insert into funcionario values
(3, 'Alice Sousa', 2500.00, 'f', 7, '1988-01-19', 104);

insert into funcionario values
(10, 'José da Silva', 1800.00, 'm', 3, '2000-10-12', null),
(11, 'Benedito Almeida', 1200.00, 'm', 5, '2001-09-01', null);

insert into departamento values
(110, 'RH', 3, '2018-11-10');

