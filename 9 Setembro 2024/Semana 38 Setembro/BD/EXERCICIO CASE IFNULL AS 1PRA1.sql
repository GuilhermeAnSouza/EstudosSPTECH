USE SPRINT2B;

create table pessoa(
idPessoa int primary key auto_increment,
nome varchar(45),
cpf char(11)
);

create table reserva (
idReserva int primary key auto_increment,
dtReserva datetime,
dtRetirada datetime,
dtDevolucao datetime,
fkPessoa int,
	constraint fkReservaPessoa
    foreign key (fkPessoa) 
    references pessoa(idPessoa)
);

insert into pessoa values
	(default, 'joao', '82487157123'),
    (default, 'joaquim', null),
    (default, 'Murilo', null),
    (default, 'Marcelo', '48172157123'),
    (default, 'Danilo', '22487157123');

insert into reserva (dtReserva, dtRetirada, dtDevolucao, fkPessoa) values 
    ('2024-09-16 10:00:00', null, '2024-09-20 10:00:00', 1), 
    (null, '2024-09-17 11:00:00', '2024-09-21 11:00:00', 2), 
    ('2024-09-18 12:00:00', '2024-09-19 12:00:00', null, 3),
	(null, null,'2024-09-22 09:00:00' , 4),
	('2024-09-18 12:00:00', null, null, 5);
    
select * from reserva  join pessoa on idPessoa = fkPessoa;

select r.dtReserva as RESERVA, r.dtRetirada as RETIRA, p.nome as NOME, p.cpf as CPF
	from reserva as r join pessoa as p on idPessoa = fkPessoa;
    
select case 
	when nome = 'Joaquim' then 'JOACÃO'
	else "Joaquin't"
    end as TipoNome -- apelido a função pra ficar legivel
    from pessoa;
    
select ifnull(r.dtReserva,'SEM NADA POR DENTRO') as RESERVA, ifnull(r.dtRetirada, 'O VAZIO GRITA') as RETIRA, p.nome as NOME, ifnull(p.cpf,'PERDIDO NO VAZIO')as CPF
	from reserva as r join pessoa as p on idPessoa = fkPessoa;
    
    create table pessoa1 (
    idPessoa1 int primary key auto_increment,
    nome varchar(45),
    dtNascimento DATE
    );
    
    create table pessoa2 (
    idPessoa2 int primary key auto_increment,
    nome varchar(45),
    dtNascimento date,
    fkPessoa1 INT, 
		CONSTRAINT FkPessoa1Pessoa2
		foreign key (fkPessoa1)
		references pessoa1(idPessoa)
    );
    
insert into pessoa1 (nome, dtNascimento) values 
    ('João', '1990-01-15'),
    ('Maria', null), 
    ('Carlos', '1985-07-22'),
    ('Gui', null),
    ('Ana', null);   
    
insert into pessoa2 (nome, dtNascimento, fkPessoa1) values 
	('Pedro', '2000-10-12', 1),
    ('Fernanda', NULL, 2), 
    ('Lucas', '1995-05-03', 3),
    ('Isabella',null,4),
    ('Carla', NULL, 5); 
    
select * from pessoa2 join pessoa1 on idPessoa1 = fkPessoa1;

select p2.nome as 'NOME GRUPO 2', p1.nome as 'NOME GRUPO 1' 
from pessoa2 as p2 join pessoa1 as p1 on idPessoa1 = fkPessoa1;

select case 
	when nome = 'Pedro' then 'PEDRONA'
	else "Pedron't"
    end as TipoNome
    from pessoa2;
    
select ifnull(p2.dtNascimento,'não nasceu' ) as 'Nasceu?', p1.nome as 'NOME GRUPO 1' 
from pessoa2 as p2 join pessoa1 as p1 on idPessoa1 = fkPessoa1;
 