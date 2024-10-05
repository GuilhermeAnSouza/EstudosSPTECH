create database PET;

use pet;

create table cliente(
idCliente int primary key auto_increment,
nome varchar(45),
telFixo char(11),
telCel char(12),
cep char(9),
cidade varchar(45),
numero char(6) 
);

create table pet(
idPet int primary key auto_increment,
fkCliente int,
constraint fkClientePet foreign key (fkCliente) 
	references cliente(idCliente),
tipo varchar(45),
raca varchar(45),
dtNasc date
)auto_increment = 101;

insert cliente (nome, telFixo, telCel, cep, cidade, numero) values
('João Silva', '1145678901', '11987654321', '01234-567', 'São Paulo', '101'),
('Maria Silva', '1145678902', '11987654322', '01234-568', 'São Paulo', '102'),
('Carlos Pereira', '1145678903', '11987654323', '01234-569', 'Rio de Janeiro', '201'),
('Ana Pereira', '1145678904', '11987654324', '01234-570', 'Rio de Janeiro', '202');

insert into pet (fkCliente, tipo, raca, dtNasc) values
(1, 'Cachorro', 'Golden Retriever', '2000-05-10'),
(1, 'Gato', 'Siamês', '2001-02-15'),
(2, 'Cachorro', 'Bulldog', '2002-07-25'),
(3, 'Pássaro', 'Calopsita', '2003-03-10'),
(4, 'Cachorro', 'Poodle', '2004-06-20');

select * from cliente;

select * from pet;

alter table cliente modify column nome varchar(30);

describe cliente;

select tipo as nome, dtNasc as 'NASCIMENTO DE UM ANJO' 
	from pet;
    
select * from pet order by tipo desc;

select * from pet
	where tipo like 'c%';

select * from cliente order by cep desc;

select * from cliente
	where nome like '%silva%';
    
update cliente set telFixo = '11 66660000'
	where idCliente = 1;
    
select * from cliente;

select p.*, c.nome from pet as p join cliente as c
	on p.fkCliente = c.idCliente;
    
select p.*, c.nome from pet as p join cliente as c
	on p.fkCliente = c.idCliente
    where p.fkCliente = 1;
    
delete from pet where idPet = 106;

select * from pet;

drop table pet;

drop table cliente;

-- Exercicio 2

create database gastos;

use gastos;

create table pessoa (
idPessoa int auto_increment primary key,
nome varchar(45),
dtNasc date,
profissão varchar(45)
);

create table gasto (
idGasto int auto_increment primary key,
dataGasto date,
valor decimal (10,2),
descricao varchar(45),
fkPessoa int unique,
constraint fkPessoaGasto foreign key (fkPessoa) references pessoa (idPessoa)
);

insert into pessoa (nome, dtNasc, profissão) values
('João Pereira', '1985-05-15', 'Engenheiro'),
('Maria Silva', '1990-08-22', 'Estágiario'),
('Carlos Santos', '1978-12-01', 'Professor');

insert into gasto (fkPessoa, dataGasto, valor, descricao) values
(1, '2024-01-10', 500.00, 'Mecanico'),
(2, '2024-02-15', 1200.00, 'Faculdade'),
(3, '2024-03-20', 300.00, 'Tela quebrada');

select * from pessoa;

select * from gasto;

select nome,dtNasc, profissão as Futuro from pessoa
	where profissão = 'estágiario';
    
select dataGasto,valor, descricao as 'Para onde vai todo meu dinheiro' from gasto
	where descricao = 'faculdade';

select g.*, p.nome as Dono from gasto as g
	join pessoa as p 
		on g.fkPessoa = p.idPessoa;
        
select g.*, p.nome as Dono from gasto as g
	join pessoa as p 
		on g.fkPessoa = p.idPessoa
			where p.nome like 'Maria%';
            
update gasto set valor = '0'
	where idGasto = 1;
    
update gasto set valor = '300'
	where idGasto = 2;
    
update gasto set valor = '250'
	where idGasto = 3;
    
delete from gasto
	where idGasto = 1;
    
select * from gasto;

-- exercicio 3

create database PraticaFuncionario;

use praticaFuncionario;

create table setor (
idSetor int auto_increment primary key,
nome varchar(45),
numero char(5)
);

create table funcionario(
idFuncionario int auto_increment primary key,
nome varchar(45),
tel char(13),
salario decimal(10,2),
fkSetor int,
constraint fkSetorFuncionario foreign key (fkSetor) 
	references setor(idSetor)
);

create table acompanhante(
idAcompanhante int,
fkFuncionario int,
primary key (idAcompanhante, fkFuncionario),
nome varchar(45),
relacao varchar(45),
dtNasc date,
constraint fkAcompanhanteFunci foreign key (fkFuncionario)
	references funcionario(idFuncionario)
);

insert into setor (nome, numero) values
('RH', '001'),
('VENDAS', '002'),
('FINANCEIRO', '003');

insert into funcionario (nome, tel, salario, fkSetor) values
('João Pereira', '11987654321', 4500.00, 1),  
('Maria Silva', '11987654322', 5500.00, 2),
('Carlos Santos', '11987654323', 6500.00, 3),
('Francisco Neto', '11987654324', 7500.00, 3),
('Mari Santos', '11987654325', 8500.00, 3);

insert acompanhante (idAcompanhante, fkFuncionario, nome, relacao, dtNasc) values
(1, 1, 'Ana Pereira', 'Esposa', '1987-04-15'),
(1, 2, 'Pedro Silva', 'Filho', '2010-08-10'),
(1, 3, 'Laura Santos', 'Filha', '2015-05-20'),
(1, 4, 'Pedro neto', 'Filho', '2015-05-20'),
(2, 4, 'Francisco bisneto', 'Filho', '2015-05-20');


insert into funcionario (nome, tel, salario, fkSetor) values
('Julis Clei', '11987654326', 1500.00, 1),  
('Jacin Pin', '11987654326', 2500.00, 2);

select * from setor;

select * from funcionario;

select * from acompanhante;

select s.*, f.nome from setor as s
	join funcionario as f
		on f.fkSetor = s.idSetor;
        
select s.*, f.nome from setor as s
	join funcionario as f
		on f.fkSetor = s.idSetor
			where s.nome = 'rh';
	
select f.*, a.nome from funcionario as f
	join acompanhante as a 
		on a.fkFuncionario = f.idFuncionario;

select f.*, a.nome from funcionario as f
	join acompanhante as a 
		on a.fkFuncionario = f.idFuncionario
			where f.nome = 'Francisco Neto';

select f.*, a.*, s.* from funcionario as f
	join acompanhante as a
			on a.fkFuncionario = f.idFuncionario
				join setor as s
					on f.fkSetor = s.idSetor;

-- exercicio 4

create database treinador;

use treinador;

create table treinador(
idTreinador int auto_increment primary key,
nome varchar(45),
tel char(12),
email varchar(45),
fkExperiente int,
constraint fkExperienteTreinador foreign key (fkExperiente)
	references treinador (idTreinador)
)auto_increment = 10;

create table nadador (
idNadador int primary key auto_increment,
nome varchar(45),
fkTreinador int,
constraint fkNadadorTreinador foreign key (fkTreinador)
	references treinador (idTreinador),
estado char(2),
dtNasc date
)auto_increment = 100;

insert into treinador (nome, tel, email, fkExperiente) values
('Carlos Silva', '11987654321', 'carlos@gmail.com', null);

insert into treinador (nome, tel, email, fkExperiente) values
('Ana Souza', '11987654322', 'ana@gmail.com', 10),          
('Paulo Mendes', '11987654323', 'paulo@gmail.com', 10),     
('João Santos', '11987654324', 'joao@gmail.com', 10);

select * from treinador;

insert nadador (nome, fkTreinador, estado, dtNasc) values
('SP da silva', 10, 'SP', '2000-01-01'),  
('RJ de Oliveira', 10, 'RJ', '1998-05-10'),  
('MG de Souza', 11, 'MG', '1999-02-20'),  
('RS de Carvalho', 12, 'RS', '2001-03-15'),
('MT de Paula', 13, 'MT', '2002-05-16');

select * from treinador;

select * from nadador;

select t.*, n.* from nadador as n
	join treinador as t
		on n.fkTreinador = t.idTreinador;

select t.*, n.* from nadador as n
	join treinador as t
		on n.fkTreinador = t.idTreinador
			where t.nome = 'Ana Souza';
            
select t.*, e.nome from treinador as t
	join treinador as e
		on t.fkExperiente = e.idTreinador;
        
select t.*, e.nome from treinador as t
	join treinador as e
		on t.fkExperiente = e.idTreinador
			where e.nome = 'Ana Souza';
            
select n.* , t.nome, e.nome from treinador as t
	join treinador as e
		on t.fkExperiente = e.idTreinador
			join nadador as n
				on n.fkTreinador = t.idTreinador;
                
select  t.*, n.* , e.* from treinador as t
	join treinador as e
		on t.fkExperiente = e.idTreinador
			join nadador as n
				on n.fkTreinador = t.idTreinador
					where t.nome = 'Paulo Mendes'
