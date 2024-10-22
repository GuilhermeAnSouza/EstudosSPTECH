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
fkAluno int unique,
	constraint fkAlunoEndereco foreign key (fkAluno) references aluno(idaluno)
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

create database RockInRio;

use RockInRio;

create table palco (
idPalco int primary key auto_increment,
nome varchar(45),
nomeArtista varchar(45),
pessoa int,
precoIngresso decimal (6,2)
);

create table participante (
idParticipante int primary key auto_increment,
nome varchar(45),
cpf char(11),
dtNasc date,
tel char(9),
fkPalco int,
	constraint fkPalcoParticipante foreign key (fkPalco) references palco(idPalco),
fkDependente int, 
	constraint fkParticipanteDependente foreign key (fkDependente) references participante(idParticipante)
);

insert into palco (nome, nomeArtista, pessoa, precoIngresso) values
('Palco Principal', 'Artista A', 100, 150.00),
('Palco Secundário', 'Artista B', 80, 100.00),
('Palco Terciário', 'Artista C', 50, 75.00),
('Palco Quatiário', 'Artista D', 40, 50.00),
('Palco Quinteriário', 'Artista E', 20, 25.00);


insert into participante (nome, cpf, dtNasc, tel, fkPalco, fkDependente) values
('Participante 1', '11111111111', '1990-01-01', '123456789', 1, null),
('Participante 2', '22222222222', '1985-02-15', '987654321', 2, null),
('Participante 3', '33333333333', '1995-03-20', '123123123', 3, null),
('Participante 4', '44444444444', '1988-07-07', '321321321', 4, null),
('Participante 5', '55555555555', '1992-05-12', '456456456', 5, null),
('Participante 6', '66666666666', '2000-06-06', '789789789', 1, 1),
('Participante 7', '77777777777', '1999-09-09', '987987987', 2, 2),
('Participante 8', '88888888888', '1994-04-04', '654654654', 3, 3),
('Participante 9', '99999999999', '1991-11-11', '321654987', 4, 4),
('Participante 10', '12312312345', '1993-08-08', '159357852', 5, 5),
('Participante 11', '11122233344', '1997-12-31', '741852963', 1, 6),
('Participante 12', '55566677788', '1998-10-10', '963852741', 2, 7),
('Participante 13', '99900011122', '1996-07-07', '456789123', 3, 8),
('Participante 14', '44433322211', '1995-02-02', '789456123', 4, 9),
('Participante 15', '12345678900', '2001-01-01', '852963741', 5, 10);

select p.*, pp.nome from participante as p join palco as pp
	on p.fkPalco = pp.idPalco;
	
select * from participante as p join palco as pp
	on p.fkPalco = pp.idPalco;
    

update participante as p join palco as pp
	on p.fkPalco = pp.idPalco
		set precoIngresso = '10'
			where p.idParticipante = 2;

select p.nome, pp.nome from participante as p join palco as pp
	on p.fkPalco = pp.idPalco
		where precoIngresso > 200;

alter table participante add column email varchar(255);

alter table participante rename column tel to contato;

select * from participante as p  left join participante as d
	on p.fkDependente = d.idParticipante;
    
select * from participante where fkDependente is null;

select p.nome as nomeParticipante, pp.nome as nomePalco from participante as p join palco as pp
	on p.fkPalco = pp.idPalco;
    
select * from participante as p join participante as d
	on p.fkDependente = d.idParticipante;
    
select nome, pessoa from palco
	where precoIngresso <= 150;
    
select p.nome, pp.nome from participante as p join palco as pp 
	on p.fkPalco = pp.idPalco
		where pp.nome like 's%';
        
select pp.*, p.nome from participante as p join palco as pp
	on p.fkPalco = pp.idPalco;
    
select p.nome, pp.nome from participante as p join palco as pp
	on p.fkPalco = pp.idPalco
		order by pp.nome;

create database pokémon;

use pokémon;

create table treinador(
idTreinador int primary key auto_increment,
nome varchar(45),
dtNasc date,
	constraint chkDtNasc check (dtNasc <= '2010-10-15'),
qtdMedalha int,
cidadeOrigem varchar(45),
fkMentor int unique,
	constraint fkMentorTreinador foreign key (fkMentor) references treinador(idTreinador)
);

create table pokemon(
idPokemon int auto_increment primary key,
nome varchar(45),
altura float(5,2),
peso float(5,2),
lendario char(3),
	constraint chkLendario check (lendario
		in ('sim','nao')),
tipo varchar(45),
	constraint chkTipo check (tipo
		in ('fogo','Agua','Fantasma','Pedra','Eletrico','Lutador')),
fkTreinador int,
	constraint fkTreinadorPokemon foreign key (fkTreinador)	references treinador(idTreinador)
)auto_increment = 100;


insert into treinador (nome, dtNasc, qtdMedalha, cidadeOrigem, fkMentor) values

('Ash Ketchum', '1987-05-22', 8, 'Pallet Town', null),
('Brock', '1985-03-15', 10, 'Pewter City', null),
('Misty', '1987-12-10', 6, 'Cerulean City', null),
('Professor Oak', '1947-06-01', 0, 'Pallet Town', null),  
('Gary Oak', '1990-04-10', 5, 'Pallet Town', 4);


insert into pokemon (nome, altura, peso, lendario, tipo, fkTreinador) values
('Pikachu', 0.40, 6.00, 'nao', 'eletrico', 1),
('Charizard', 1.70, 90.50, 'Nao', 'fogo', 1),
('Onix', 8.80, 210.00, 'nao', 'Pedra', 2),
('Mochilon', 0.40, 20.00, 'nao', 'Pedra', 2),
('Televichon', 1.50, 30.00, 'nao', 'Pedra', 3),
('Bedurin', 0.60, 5.20, 'nao', 'Agua', 3),
('Skaterinio', 1.70, 5.30, 'nao', 'Lutador', 5),
('Cobirtruna', 1.80, 5.40, 'nao', 'fogo', 5),
('Lihatyr', 0.90, null, 'sim', 'Fantasma', 5),
('kerylhamna', 1.00, 5.50, 'nao', 'Fantasma', 5);


select * from treinador join pokemon
	on idTreinador = fkTreinador;
    
alter table pokemon modify column lendario char(3) not null;

select p.peso, p.nome, t.nome,  ifnull(p.peso, 'muito leve') as Peso from pokemon as p join treinador as t
	on t.idTreinador = p.fkTreinador;
    
select p.nome,t.nome, p.tipo, case 
	when p.tipo = 'fogo' then 'Fraco contra água'
	when p.tipo = 'Agua' then 'Fraco contra missil nuclear'
    when p.tipo = 'lutador' then 'Fraco contra Bruce Lee'
		else 'sem tipo'
			end as fraqueza
				from pokemon as p join treinador as t
					on t.idTreinador = p.fkTreinador
						where p.tipo in ('Lutador', 'Agua', 'fogo')
							limit 3;
                            
insert into pokemon (nome, altura, peso, lendario, tipo) values
('Peninoniloa',0.50,0.10,'nao','lutador'),
('Gatilson',0.75,3.00,'sim','eletrico');

select t.nome, m.nome, p.nome from treinador as t join treinador as m
	on t.fkMentor = m.idTreinador
		join pokemon as p
			on p.fkTreinador = t.idTreinador
				where t.dtNasc < '2004-01-01';
                
select t.nome, p.nome from treinador as t right join  pokemon as p
	on t.idTreinador = p.fkTreinador;

select t.nome, m.nome, p.nome from treinador as t join treinador as m
	on t.fkMentor = m.idTreinador
		join pokemon as p
			on p.fkTreinador = t.idTreinador
				where p.nome like '%e%';

select p.nome, concat(t.nome,' Treinador') as treinador from pokemon as p join treinador as t
	on p.fkTreinador = t.idTreinador;	
	
alter table treinador drop constraint chkDtNasc;

select p.nome, t.nome from pokemon as p left join treinador as t
	on p.fkTreinador = t.idTreinador
		where p.tipo in ('agua', 'fogo') and p.altura > 1.00;
        
select m.nome, t.nome, p.nome from treinador as t join treinador as m
	on m.idTreinador = t.fkMentor
		join pokemon as p
			on p.fkTreinador = t.idTreinador;
	
update pokemon set fkTreinador = 3
	where idPokemon = 110;
    
update pokemon set fkTreinador = 5
	where idPokemon = 111;

select * from pokemon;

drop database pokémon;

create database TechBuster;

use TechBuster;

create table cliente (
idCiente int primary key auto_increment,
nome varchar (45),
rua varchar (45),
complemento varchar(45),
bairro varchar(45),
cidade varchar(45),
uf char (2),
telefone char (9),
email varchar(45)
);

create table produto(
idProduto int primary key auto_increment,
titulo varchar (45),
anoLancamento int,
tipo varchar(45),
	constraint chkTipo check (tipo
    in ('jogo','filme')),
genero varchar(45),
plataforma varchar(45),
preco decimal (10,2),
condicao varchar(45)
);

create table aluguel (
idAluguei int primary key auto_increment,
fkCliente int unique,
	constraint fkClienteAluguel foreign key (fkCliente) references cliente(idCiente),
fkProduto int unique,
	constraint fkProdutoAluguel foreign key (fkProduto) references produto(idProduto),
dtRetirada date,
dtDevolucao date
);

insert into cliente (nome, rua, complemento, bairro, cidade, uf, telefone, email) values
('Cliente 1', 'Rua 1', 'Apto 1', 'Bairro 1', 'Cidade 1', 'SP', '111111111', 'cliente1@email.com'),
('Cliente 2', 'Rua 2', 'Casa', 'Bairro 2', 'Cidade 2', 'RJ', '222222222', 'cliente2@email.com'),
('Cliente 3', 'Rua 3', 'Apto 2', 'Bairro 3', 'Cidade 3', 'MG', '333333333', 'cliente3@email.com'),
('Cliente 4', 'Rua 4', 'Casa', 'Bairro 4', 'Cidade 4', 'PR', '444444444', 'cliente4@email.com'),
('Cliente 5', 'Rua 5', 'Apto 3', 'Bairro 5', 'Cidade 5', 'RS', '555555555', 'cliente5@email.com');

insert into produto (titulo, anoLancamento, tipo, genero, plataforma, preco, condicao) values
('The Last of Us', 2013, 'jogo', 'Ação', 'PlayStation', 199.99, 'Novo'),
('Inception', 2010, 'filme', 'Ficção Científica', 'DVD', 29.90, 'Premium'),
('Fifa 21', 2020, 'jogo', 'Esporte', 'Xbox', 249.99, 'Original'),
('Titanic', 1997, 'filme', 'Romance', 'DVD', 39.90, 'Usado'),
('God of War', 2018, 'jogo', 'Ação', 'PlayStation', 199.99, 'Novo');

insert into aluguel (fkCliente, fkProduto, dtRetirada, dtDevolucao) values
(1, 1, '2024-10-01', '2024-10-05'),  
(2, 2, '2024-10-02', '2024-10-06'),  
(3, 3, '2024-10-03', '2024-10-07'),  
(4, 4, '2024-10-04', '2024-10-08'),  
(5, 5, '2024-10-05', '2024-10-09'); 

select c.nome, p.titulo, a.dtRetirada, a.dtDevolucao from aluguel as a join cliente as c 
	on a.fkCliente = c.idCiente join produto p 
		on a.fkProduto = p.idProduto;
        
update aluguel set dtDevolucao = null 
	where idAluguei = 1;

select c.nome, p.titulo from aluguel as a join cliente c
	on a.fkCliente = c.idCiente 
		join produto as p on a.fkProduto = p.idProduto 
			where p.preco > 15.00 and p.tipo = 'jogo';
            
select c.nome from cliente as c 
	join aluguel as a 
		on c.idCiente = a.fkCliente
			where a.dtDevolucao is null;
            
select c.nome, p.titulo, case when a.dtDevolucao 
	is null then 'Em Aberto'
		else 'Concluído' end as
			Situacao from cliente as c join aluguel as a
				on c.idCiente = a.fkCliente
					join produto as p 
						on a.fkProduto = p.idProduto;
                        
select c.nome , p.titulo from cliente as c left join aluguel as a 
	on c.idCiente = a.fkCliente left join produto as p 
		on a.fkProduto = p.idProduto;

select c.nome, p.titulo, p.plataforma from aluguel as a join cliente as c
	on a.fkCliente = c.idCiente 
		join produto as p 
			on a.fkProduto = p.idProduto 
				where p.tipo = 'jogo' and p.genero = 'Esporte';
                
alter table produto rename column condicao to condicao;

select c.nome, p.titulo from cliente as c join aluguel as a
	on c.idCiente = a.fkCliente 
		join produto as p
			on a.fkProduto = p.idProduto
				where p.titulo like 't%';
                
select c.nome, p.titulo as produto from cliente as c 
	join aluguel as a on c.idCiente = a.fkCliente 
		join produto as p on a.fkProduto = p.idProduto
			order by c.nome;
            
select c.nome, p.titulo from cliente as c join aluguel as a 
	on c.idCiente = a.fkCliente join produto as p
		on a.fkProduto = p.idProduto
			limit 3;
            
select c.nome, p.titulo from cliente as c left join aluguel as a
	on c.idCiente = a.fkCliente left join produto 
		as p on a.fkProduto = p.idProduto;

alter table aluguel drop foreign key fkClienteAluguel;

truncate table aluguel;










		