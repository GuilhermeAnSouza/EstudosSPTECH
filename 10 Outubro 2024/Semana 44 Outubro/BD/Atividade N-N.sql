create database vendas;

use vendas;

create table clientes(
idCliente int primary key auto_increment,
fkIndicou int,
	constraint fkIndicouCliente foreign key (fkIndicou) references clientes(idCliente),
nome varchar(45),
email varchar(45),
cep char(9),
cidade varchar(45),
numero char(9)
);

create table vendas(
idVendas int primary key auto_increment,
fkCliente int,
	constraint fkClienteVendas foreign key (fkCliente) references clientes(idCliente),
totalVenda decimal (10,2),
dtVenda date
);

create table produtos (
idProduto int primary key auto_increment,
nome varchar(45),
descr varchar(45),
preco decimal (10,2)
);

create table produtoVendido (
fkProduto int,
	foreign key (fkProduto) references produtos(idProduto),
fkVendas int,
	foreign key (fkProduto) references vendas (idVendas),
qtdProduto int,
valorDesconto decimal(10,2),
primary key (fkProduto,fkVendas)
);

insert into clientes(fkIndicou, nome, email, cep, cidade, numero) values 
	(null, 'jo', 'jo@jo', '1235215', 'cisa','1'),
	(null, 'fo', 'fo@fo', '1152352', 'aisa','82'),
	(1, 'Go', 'Go@Go', '11235125', 'Sampa','10'),
	(1, 'Co', 'Co@Co', '13246', 'Rio','1123'),
	(2, 'Ao', 'Ao@jo', '11235', 'CUIABA','1928');

insert into vendas(fkCliente, totalVenda, dtVenda) values
(1,180,'2024-11-12'),
(1,50,'2024-04-30'),
(2,145,'2024-03-20'),
(2,265,'2024-05-27'),
(3,100,'2024-01-17'),
(3,320,'2024-04-08'),
(4,140,'2024-05-06'),
(4,250,'2024-10-05'),
(5,90,'2024-10-01'),
(5,95,'2024-12-10');


insert into produtos (nome, descr, preco) values
('Produto A', 'Descrição do Produto A', 100.00),
('Produto B', 'Descrição do Produto B', 50.00),
('Produto C', 'Descrição do Produto C', 150.00);

insert into produtoVendido (fkProduto, fkVendas, qtdProduto, valorDesconto) values
(1, 1, 2, 10.00),
(2, 2, 1, 0.00),
(3, 3, 1, 5.00),
(1, 4, 3, 15.00),
(2, 5, 2, 0.00),
(1, 6, 4, 20.00),
(3, 7, 1, 10.00),
(2, 8, 5, 0.00),
(1, 9, 1, 5.00),
(1, 10, 1, 5.00);

select * from clientes;

select * from vendas;

select * from produtos;

select * from produtoVendido;

select c.nome, v.* from clientes as c join vendas as v
	on fkCliente = idCliente;
    
select c.nome, v.* from clientes as c join vendas as v
	on fkCliente = idCliente
		where c.nome = 'co';

select c.nome as ClienteNome, i.nome indicadoPor from clientes as c  left join clientes as i
	on c.fkIndicou = i.idCliente;
    
select c.nome as ClienteNome, i.nome indicadoPor from clientes as c join clientes as i
	on c.fkIndicou = i.idCliente
		where i.nome = 'jo';
        
select c.nome as ClienteNome, i.nome indicadoPor, v.*, p.nome from clientes as c left join clientes as i
	on c.fkIndicou = i.idCliente
		join vendas as v
			on c.idCliente = v.fkCliente
				join produtoVendido as pv
					on pv.fkVendas = v.idVendas
						join produtos as p
							on pv.fkProduto = p.idProduto
								order by idVendas;
                                
select v.dtVenda, p.nome, pv.qtdProduto from produtoVendido as pv join vendas as v
	on pv.fkVendas = v.idVendas
		join produtos as p
			on pv.fkProduto = p.idProduto
				where idVendas = 1;

select nome, preco, sum(preco * pv.qtdProduto) as totalVendido from produtos as p join produtoVendido as pv
	where idProduto = fkProduto
		group by p.nome, p.preco;
     
     
     
insert into clientes values
(default, 2, 'mo', 'mo@mo', '12215', 'jisa','90');

select c.*, v.* from clientes as c left join vendas as v
	on v.fkCliente = c.idCliente;
    
select max(preco) as MaiorPreco , min(preco) as MenorPreco from produtos;

select sum(preco) as Soma, avg(preco) as Media from produtos;

select preco from produtos
	where preco > (select avg(preco) from produtos);
    
select sum(distinct preco) as SomaDosDiferentes from produtos;
    
select sum(preco * qtdProduto) as ValorVendido from produtos join produtoVendido
	on fkProduto = idProduto
		join vendas
			on fkVendas = idVendas
				where idVendas = 1

		