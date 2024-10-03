use sprint2b;

create table candidatos (
    idCand int primary key auto_increment,
    nome varchar(100),
    categoria varchar(20)
);

create table habilitacoes (
    idHabili int primary key auto_increment,
    tipoHabilitacao varchar(100),
    dataEmissao date,
    fkCand int unique,
    constraint fkHabiliCandi foreign key (fkCand) references candidatos (idCand)
);

insert into candidatos (nome, categoria) values
('joão silva', 'a'),
('maria souza', 'b'),
('carlos pereira', 'acc'),
('ana lima', 'a e b'),
('fernanda costa', 'a e b');

insert into habilitacoes (fkCand, tipoHabilitacao, dataEmissao) values
(1, 'motocicleta', '2023-01-15'),
(2, 'automóvel', '2023-02-20'),
(3, 'ciclomotor', '2023-03-10'),
(4, 'motocicleta e automóvel', '2023-04-05'),
(5, 'motocicleta e automóvel', '2023-05-30');

select * from candidatos;
select * from habilitacoes;

select idCand as Numero, nome as Canditado, Categoria as Tipo
	from candidatos;
select idHabili as idHabili, fkCand as Canditado, tipoHabilitacao as tipo, dataEmissao as data 
	from habilitacoes;

select idCand, nome,
    case 
        when categoria = 'a' then 'motocicleta'
        when categoria = 'b' then 'automóvel'
        when categoria = 'a e b' then 'motocicleta e automóvel'
        else 'categoria desconhecida'
    end as tipoHabilitacao
from candidatos;

select 
    c.idCand,
    c.nome,   
    ifnull(h.tipoHabilitacao, 'sem carteira') as habilitacao
from candidatos c
left join habilitacoes h on c.idCand = h.fkCand;

-- EXERCICIO 2

create table endereco (
    idEndereco int primary key auto_increment,
    rua varchar(100),
    numero int,
    cidade varchar(50),
    estado varchar(2)
);

create table farmacia (
    idFarmacia int primary key auto_increment,
    nome varchar(100),
    fkEndereco int unique,
    constraint fkEnderecoFarmacia
    foreign key (fkEndereco) references endereco(idEndereco)
);

create table farmaceutico (
    idFarmaceutico int primary key auto_increment,
    nome varchar(100),
    fkFarmacia int unique,
    foreign key (fkFarmacia) references farmacia(idFarmacia)
);

insert into endereco (rua, numero, cidade, estado) values
('rua brasil', '100', 'são paulo', 'sp'),
('av. rio', '200', 'rio de janeiro', 'rj'),
('rua paraná', '300', 'curitiba', 'pr'),
('av. bahia', '400', 'salvador', 'ba'),
('rua ceará', '500', 'fortaleza', 'ce');

insert into farmacia (nome, fkEndereco) values
('farmácia central', 1),
('farmácia saúde', 2),
('farmácia vida', 3),
('farmácia bem-estar', 4),
('farmácia família', 5);

insert into farmaceutico (nome, Fkfarmacia) values
('joão oliveira', 1),
('maria souza', 2),
('pedro silva', 3),
('ana costa', 4),
('lucas ribeiro', 5);

select * from farmacia;
select * from farmaceutico;
select * from endereco;

select f.nome as 'nome farmacia', e.rua as 'endereco rua', e.cidade as 'endereco cidade' 
from farmacia f
join endereco e on f.fkEndereco = e.idEndereco;

select f.nome as 'nome farmacia',
    case 
        when e.estado = 'sp' then 'são paulo'
        when e.estado = 'rj' then 'rio de janeiro'
        else 'outro estado'
    end as estado_farmacia
from farmacia f
join endereco e on f.fkEndereco = e.idEndereco;

select f.nome as 'nome farmacia',
    ifnull(e.rua, 'sem endereço') as 'endereco'
from farmacia f
left join endereco e on f.fkEndereco = e.idEndereco;

-- EXERCICIO 3 

create table AlunosBD(
idAluno int primary key auto_increment,
Nome varchar(45),
curso varchar(25),
turma varchar(25),
Semestre varchar(25),
fkMonitor int,
constraint  fkMonitorAluno foreign key (fkMonitor) references AlunosBD(idAluno)
);

insert into alunosBD values
(default, 'Lisbela', 'CCO', 'A', '4 SEMESTRE', NULL),
(default, 'Guilherme', 'ADS', 'B', '4 SEMESTRE',NULL),
(default, 'Marcelo', 'ADS', 'B', '1 SEMESTRE', NULL),
(default, 'João', 'ADS', 'B', '1 SEMESTRE', NULL),
(default, 'Felippe', 'ADS', 'B', '1 SEMESTRE', NULL),
(default, 'Felipe', 'ADS', 'B', '1 SEMESTRE', NULL),
(default, 'Pedro', 'ADS', 'B', '1 SEMESTRE', NULL);

update alunosBD set fkMonitor = 22 
	where idAluno = 23;
    
update alunosBD set fkMonitor = 22 
	where idAluno = 24;

update alunosBD set fkMonitor = 22
	where idAluno = 25;
    
update alunosBD set fkMonitor = 22
	where idAluno = 26;
    
update alunosBD set fkMonitor = 22 
	where idAluno = 27;
    
update alunosBD set fkMonitor = 22
	where idAluno = 28;
    
update alunosBD set fkMonitor = 22
	where idAluno = 29;
    
select * from alunosBD;

select a.nome, a.fkMonitor, m.nome as nomeMonitor 
from alunosBD as a
join alunosBD as m on a.fkMonitor = m.idAluno;

select case 
	when idAluno = 22 then 'MEU NOME É ISABELA'
    else 'SEU NOME É LISBELA?'
    end as NomeMonitor
    from alunosBD;
    
select nome, ifnull(fkMonitor, 'monitor desconhecido')
from alunosBD; 

-- exercicio 4 

create table familia1 (
    idPessoa int primary key auto_increment,
    nome varchar(100),
    fkPai int,
    fkMae int,
    constraint fkPaiFamilia
    foreign key (fkPai) references familia1(idPessoa),
    constraint fkMaeFamilia
    foreign key (fkMae) references familia1(idPessoa)
);


insert into familia1 (nome) values 
('josé da silva'),  
('maria da silva'), 
('carlos oliveira'),
('ana souza'),      
('joão pereira'),   
('patrícia oliveira'),
('roberto lima'),   
('lúcia lima'),     
('luiz ribeiro'),   
('joana ribeiro');  

select * from familia1;

insert into familia1 (nome, fkPai, fkMae) values
('rafael silva', 1, 2),   -- pai: josé da silva, mãe: maria da silva
('ana oliveira', 3, 4),   -- pai: carlos oliveira, mãe: ana souza
('pedro pereira', 5, 6),  -- pai: joão pereira, mãe: patrícia oliveira
('luiz lima', 7, 8),      -- pai: roberto lima, mãe: lúcia lima
('joão ribeiro', 9, 10);  -- pai: luiz ribeiro, mãe: joana ribeiro

select * from familia1;

select p1.nome as nome_pessoa, 
       p2.nome as nome_pai, 
       p3.nome as nome_mae
from familia1 p1
left join pessoa p2 on p1.id_pai = p2.id_pessoa
left join pessoa p3 on p1.id_mae = p3.id_pessoa;

select p1.nome as nome_pessoa,
    case 
        when p2.nome is not null then p2.nome
        else 'sem pai'
    end as nome_pai,
    case 
        when p3.nome is not null then p3.nome
        else 'sem mãe'
    end as nome_mae
from familia1 p1
left join pessoa p2 on p1.fkPai = p2.idpessoa
left join pessoa p3 on p1.fkMae = p3.idpessoa;
