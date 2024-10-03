create database scooby;

use scooby;

create table MisteriosSA(
id int primary key auto_increment,
produto varchar(40),
dtcompra date,
preco decimal(10,2),
pesoGramas int, 
dtretirada date);


insert into MisteriosSA values
(default,'biscoito','2001-04-12','5.00',89,null),
(default,'ketchup','2011-03-15','3.99',150,null),
(default,'chocolate','2015-11-30','10.00',100,null),
(default,'pao','2018-02-04','2.30',250,null),
(default,'mortandela','2020-08-12','9.08',200,null);

select * from misteriossa;

select produto, dtcompra, dtretirada, id from misteriossa 
	order by dtcompra;

update misteriossa set dtretirada = '2024-08-26'
	where id = 1;
    
alter table misteriossa 
	rename column id to idcomida;
    
update misteriossa set produto = 'biscoitoscooby'
	where idcomida= 1;
    
update misteriossa set produto = 'cachorro-quente'
	where idcomida= 2;

update misteriossa set produto = 'biscoitoscooby'
	where idcomida= 3;
      
update misteriossa set produto = 'cachorro-quente'
	where idcomida= 4;
    
update misteriossa set produto = 'biscoitoscooby'
	where idcomida= 5;
    
alter table misteriossa add constraint chkproduto
	check ( produto in ('biscoitoScooby','cachorro-quente'));

select produto, dtcompra as 'data da compra', dtretirada as 'data da retirada' from misteriossa
	where produto = 'biscoitoScooby';
    
select * from misteriossa
	where dtcompra > 2024-07-25;
    
select produto from misteriossa
	where preco >= 30.50;
    
truncate misteriossa;

create database game_store;

use game_store;

create table jogo(
id int primary key auto_increment,
nome varchar(30),
diretor varchar(30),
genero varchar(30),
dtlan date,
nota int constraint chknota
check (nota in (1,2,3,4,5,6,7,8,9,10))
);

insert into jogo values 
(default, 'jogo 1', 'diretor 1', 'genero 1','2018-01-23','1'),
(default, 'jogo 2', 'diretor 2', 'genero 4','2008-08-15','7'),
(default, 'jogo 3', 'diretor 3', 'genero 2','2005-05-13','2'),
(default, 'jogo 4', 'diretor 4', 'genero 5','2010-12-10','8'),
(default, 'jogo 5', 'diretor 5', 'genero 3','2020-10-30','5');

alter table jogo add column quantidade int;

update jogo set quantidade = 2
	where id = 1;

update jogo set quantidade = 10
	where id = 2;

update jogo set quantidade = 23
	where id = 3;
    
update jogo set quantidade = 15
	where id = 4;
    
update jogo set quantidade = 4
	where id = 5;

alter table jogo add column midia varchar(15) constraint chkmidia
	check (midia in ('fisica', 'digital'));
    
update jogo set midia = 'digital'
	where id = 1;

update jogo set midia = 'digital'
	where id = 2;
    
update jogo set midia = 'fisica'
	where id = 3;

update jogo set midia = 'fisica'
	where id = 4;

update jogo set midia = 'digital'
	where id = 5;

select * from jogo
	where dtlan > '2015-01-01';

select * from jogo
	where nome like '%a%' and midia = 'fisica';
    
select * from jogo
	where nome not like '%e%';
    
alter table jogo drop constraint chknota;

alter table jogo
add constraint chknota check (nota between 0 and 10);

select * from jogo 
	where quantidade > 1 and genero = 'genero 1';

select * from jogo 
	where quantidade = 0;
    
alter table jogo rename column diretor to criador;

desc jogo;

create database olimpiadas;

use olimpiadas;

create table esporte(
id int primary key auto_increment,
esporte varchar (40),
categoria varchar (20) constraint chkcat
	check (categoria in ('individual','coletivo')),
numjog int,
estreia date,
origem varchar(30)
);

insert into esporte values 
(default,'esporte 4', 'coletivo','11','1910-01-01','país 5'),
(default,'esporte 1', 'individual','1','1978-05-12','país 4'),
(default,'esporte 5', 'individual','1','1922-10-25','país 3'),
(default,'esporte 2', 'coletivo','5','1934-07-30','país 2'),
(default,'esporte 3', 'coletivo','3','1988-6-05','país 1');

alter table esporte add column popularidade float (2,1);

update esporte set popularidade = 3.5
	where id = '1';

update esporte set popularidade = 1.2
	where id = '2';

update esporte set popularidade = 7.5
	where id = '3';

update esporte set popularidade = 9.9
	where id = '4';

update esporte set popularidade = 9.5
	where id = '5';
    
select * from esporte order by popularidade asc;

select * from esporte
	where estreia >= '2000-01-01';
    

alter table esporte add constraint chk
	check(estreia >= '1896-04-16' and estreia <= '2024-08-24');
    
alter table esporte drop constraint chkcat;
    
select * from esporte 
	where origem like '_a%';

select * from esporte 
	where numjog >= 4 and numjog <=11;
    
delete from esporte
	where id = 1;

delete from esporte
	where id = 3;

delete from esporte
	where id = 5;

create database desenho;

use desenho;

create table desenho(
id int primary key auto_increment,
titulo varchar (50),
dtlan date,
emissora varchar (50),
classificação int,
statu varchar(15),
nota int constraint chknota
	check (nota >= 1 and nota <=5)
) auto_increment = 10;

insert into desenho (titulo, dtlan, emissora, classificação, statu, nota) values
('Dragon Ball Z', '1989-04-26', 'Fuji TV', 12, 'Finalizado', 5),
('Avatar: The Last Airbender', '2005-02-21', 'Nickelodeon', 10, 'Finalizado', 5),
('Rick and Morty', '2013-12-02', 'Adult Swim', 16, 'Em Andamento', 4),
('Os Simpsons', '1989-12-17', 'Fox', 12, 'Em Andamento', 3),
('Cavaleiros do Zodíaco', '1986-10-11', 'TV Asahi', 14, 'Finalizado', 4);

    
select * from desenho;

select * from desenho
	where classificação <= 14;
select * from desenho
	where emissora like 'fox';

set sql_safe_updates = 0;

update desenho set statu = 'exibindo'
	where statu = 'Em Andamento';
    
alter table desenho add constraint chkstatu
	check (statu in ('exibindo', 'finalizado', 'cancelado'));

insert into desenho (titulo, dtlan, emissora, classificação, statu, nota) values
('teste', '1999-01-01', 'emissora', 10, 'andamento', 2);

select * from desenho;

update desenho set statu = 'finalizado'
	where id = 1;
    
update desenho set statu = 'finalizado'
	where id = 2;
    
delete from desenho
	where id = 12;
    
select * from desenho
	where titulo like 'a%';

alter table desenho rename column classificação to classificacaoindicativa;


update desenho set nota = 5
	where id = 11;
    
truncate desenho;

alter table desenho drop constraint chkstatu;

create table heroi (
    id int auto_increment primary key,
    nome varchar(45),
    versao varchar(45),
    habilidade varchar(45),
    altura int
);

insert into heroi (nome, versao, habilidade, altura) values 
('Homem de Ferro', 'Vingadores: Ultimato', 'Tecnologia Avançada', 185),
('Thor', 'Thor: Ragnarok', 'Poder do Trovão', 198),
('Feiticeira Escarlate', 'Vingadores: Era de Ultron', 'Magia do Caos', 170),
('Doutor Estranho', 'Doutor Estranho', 'Artes Místicas', 182),
('Capitã Marvel', 'Capitã Marvel', 'Energia Cósmica', 175);

alter table heroi add column regeneracao boolean;

alter table heroi modify column versao varchar(100);

delete from heroi
	where id = 3;
    
insert heroi (nome, versao, habilidade, altura, regeneracao) values 
('Wolverine', 'X-Men: Dias de um Futuro Esquecido', 'Garras de Adamantium', 160, true);

select * from heroi
	where nome like 'c%' or nome like 'h%';
    
select * from heroi
	where nome not like '%a%';
    
select * from heroi
	where altura > 190;
    
select * from heroi 
	where altura> 180
		order by nome desc;
        
truncate heroi;