use sprint2b;

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

create user 'jogador'@'localhost'
	identified by '123456';
    

    
GRANT SELECT ON sprint2.* TO 'jogador'@'localhost';
FLUSH PRIVILEGES;
    
    
    
    
    
    
    