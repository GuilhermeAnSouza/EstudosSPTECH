show databases;

use sprint2b;

show tables;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
fkLogin int
)auto_increment = 100;

insert into usuario values
(default, 'alegria',null, null);

select * from usuario;

-- a fk não pode se repetir pois o relacionamento é 1:1
-- UNIQUE, valor não se repete
alter table usuario modify column fkLogin int unique;

describe usuario;

create table login (
idLogin int primary key auto_increment,
username varchar(45),
senha varchar(45),
dtUltimoAcesso datetime default current_timestamp
);

-- date time 'yyyy-mm-dd hh:mm:ss '

-- md5 serve para cripgrafar
insert into login values 
	(default, 'alegria2024', md5('1234'), default);
    
select * from login;

-- configurar a fkLogin

alter table usuario add constraint fkUsuarioLogin
	foreign key (fkLogin) references login(idLogin);
    
update usuario set fkLogin = 1
	where idUsuario = 100;
    
select * from usuario;

select * from usuario join login on idLogin = fkLogin; 

insert into login values 
	(default, 'novaAlegria', md5('1234'), default);
    
select * from login;

-- dará erro pq a fkLogin é UNIQUE, e está se repetindo
insert into usuario values 
	(default, 'alegria', 'alegria@alegria', 1);
    
select * from login;

update login set username = 'nojinho',
	senha = md5('5678'), dtUltimoAcesso = default
    where idLogin = 2;
    
select * from login;

insert into login values
	(default, 'nojinholala', '12356', default);

insert into usuario values
	(103, 'nojinho', null, 3);
    
-- Para melhorar a regra de negócio podemos modificar 
-- o campo email como unique e o username também
-- ifnull se tiver nulo, mude o nome
select u.nome as NomeUsuario, ifnull(u.email, 'Sem email') as EmailUsuario, l.username as 'Apelido USER', l.senha as Criptografada
	from usuario as u join login as l
    on idLogin = fkLogin;
    
select case 
	when nome = 'alegria' then 'muita alegria'
	else 'nenhuma alegria'
    end as TipoAlegria -- apelido a função pra ficar legivel
    from usuario;
    
SELECT * FROM login
	where idLogin = 1 