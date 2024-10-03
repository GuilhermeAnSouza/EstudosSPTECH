show databases;

use sprint2b;

-- criar a tabela forte e seu auto-relacionamento
create table funcionario (
idFunc int primary key auto_increment, -- atributo determinante 
nome varchar(45), -- atributo simples
cep char(9), -- atributo composto, pois vem de campos diferentes (cep, numEnd e cidade) para transformar em um atributo endereco
numEnd char(5),
cidade varchar(45),
fkSupervisor int,
constraint fkFuncioSuper foreign key (fkSupervisor)
	references funcionario (idFunc)
);

insert into funcionario (nome, cep, fkSupervisor) values
	('tio patinhas', '01414-905', 1),
    ('Huguinho', '01414-905', 1),
    ('zezinho', '01414-905', 1),
    ('Luizinho', '01414-905', 1);
    
select * from funcionario;

select func.nome as Funcionario, 
	superv.nome as Supervisor
	from funcionario as func
    join funcionario as superv
    on func.fkSupervisor = superv.idFunc;
    
-- entidade fraca - chave primária composta (fk e id)

create table dependente (
idDep int,
fkFunc int,
primary key (idDep, fkFunc),
nome varchar (45), -- atributo monovalorado (tem apenas 1 valor)
dtNasc date, -- idade = atributo derivado da dtNasc
emailPessoal varchar(45), -- atributo multivalorado (tem 2 valores que tem o mesmo valor, mas com conceitos diferentes,
emailComercial varchar(45), --  como o emailPessoal e comercial, os dois são e-mails, mas com proposta diferentes)
foreign key (fkFunc) references funcionario(idFunc)
);

insert into dependente (idDep, fkFunc, nome, dtNasc) values 
(1,1,'Tia Patinha', '1976-01-01'),
(2,1,'Filha Patinha', '2003-01-01'),
(1,2,'Huguinha', '2010-01-01');

select * from dependente;

select * from dependente join funcionario
	on idFunc = fkFunc;
    
select dependente.nome as dependente,
	funcionario.nome as funcionário
    from dependente right join funcionario
    on idFunc = fkFunc;
    
select func. nome as Funcionário,
	superv.nome as Supervisor,
    dep.nome as Dependente
    from funcionario as func
    join funcionario as superv
    on func.fkSupervisor = superv.idFunc
    join dependente as dep
    on func.idFunc = dep.fkFunc;
