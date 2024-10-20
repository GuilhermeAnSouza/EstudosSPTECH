create database escola;

use escola;

create table aluno(
alunoId int primary key auto_increment,
nome varchar(45),
dtNasc date,
matricula char(8) unique
);

create table endereco(
idEndereco int primary key auto_increment,
logradouro varchar(45),
numero varchar(45),
bairro varchar(45),
cidade varchar(45),
estado char(2),
cep char(8),
fkAluno int unique
) auto_increment=100;

insert into aluno (nome, dtNasc, matricula) values
('João', '2000-05-15', 'A1234567'),
('Maria', '1999-12-20', 'B1234567'),
('Carlos', '2001-03-25', 'C1234567'),
('Ana', '2002-07-08', 'D1234567'),
('Pedro', '1998-11-12', 'E1234567'),
('Bruna', '2000-10-01', 'F1234567'),
('Paulo', '1999-08-30', 'G1234567'),
('Fernanda', '2001-01-18', 'H1234567'),
('Rafael', '2002-06-22', 'I1234567'),
('Luana', '1999-02-28', 'J1234567');


insert into endereco (logradouro, numero, bairro, cidade, estado, cep, fkAluno) values
('Rua das Flores', '123', 'Centro', 'São Paulo', 'SP', '1001000',1),
('Rua das Pedras', '456', 'Bela Vista', 'São Paulo', 'SP', '1001001',2),
('Rua das Madeiras', '789', 'Centro', 'Curitiba', 'PR', '1001002',3),
('Rua das Coisas', '10', 'Sé', 'São Paulo', 'SP', '01001003',4),
('Rua das Formigas', '200', 'Centro', 'Rio de Janeiro', 'RJ', '1001004',5),
('Rua das Beys', '300', 'Copacabana', 'Rio de Janeiro', 'RJ', '1001005',6),
('Rua das Luas', '400', 'Consolação', 'São Paulo', 'SP', '10010006',7),
('Rua das Monas', '500', 'Centro', 'Belo Horizonte', 'MG', '1001007',8),
('Rua das Casinhas', '600', 'Consolação', 'São Paulo', 'SP', '1001008',9),
('Rua das Fadas', '700', 'Funcionários', 'Belo Horizonte', 'MG', '1001009',10);

select * from aluno as a join endereco as e 
	on a.alunoid = e.fkAluno;
    
set sql_safe_updates = 0;
    
update aluno  join endereco
on endereco.fkAluno = aluno.alunoid
set numero = '420'
where aluno.alunoId = 2;

update aluno  join endereco
on endereco.fkAluno = aluno.alunoid
set logradouro = 'Rua das Lonas'
where aluno.alunoId = 2;

select * from aluno as a join endereco as e 
	on a.alunoid = e.fkAluno;
		
select * from aluno as a join endereco as e 
	on a.alunoid = e.fkAluno
		where estado = 'SP';
        
delete from endereco 
	where estado = 'RJ';
    
alter table endereco add column país varchar(45);

delete e from aluno as a join endereco as e 
	on a.alunoid = e.fkAluno
		where bairro like '_a%';
	

alter table endereco rename column cep to codigoPostal;

select * from endereco;

select * from aluno as a join endereco as e 
	on a.alunoId = e.fkAluno
		order by a.nome;

select * from aluno as a left join endereco as e 
	on a.alunoId = e.fkAluno
		where e.idEndereco is null;

select a.nome as nomeAluno, e.logradouro as logradouroEndereco 
	from aluno as a join endereco as e
		on a.alunoId = e.fkAluno;

select * from aluno
	order by nome
		limit 5;

select nome from aluno
	where nome not like "%a%";
    
truncate table aluno;
