use sprint1;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Revista (
    idRevista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    Categoria VARCHAR(30)
);

INSERT INTO Revista (nome) VALUES
('revista 1'),
('revista 2'),
('revista 3'),
('revista 4');

select * from revista;

update Revista set Categoria = 'categoria 1'
	where idRevista = '1';
    
update Revista set Categoria = 'categoria 2' 
	where nome = 'revista 2';
    
update Revista set Categoria = 'categoria 3' where nome = 'revista 3';
update Revista set Categoria = 'categoria 4' where nome = 'revista 4';

select * from revista;

INSERT INTO Revista (nome, categoria) VALUES
('revista 5', 'categoria 5'),
('revista 6', 'categoria 6'),
('revista 7', 'categoria 7');

select * from revista;

desc revista;

alter table revista modify column categoria varchar(40);

desc revista;

alter table revista add column periodicidade varchar(15);

select * from revista;



drop database sprint1;

-- AULA 2

-- CGURAR O AUTO-INCREMENT PARA COMEÇAR A PARTIR DO 100, se quiser colocar no "create table", apenas adicionar o "AUTO_INCREMENT = 100;" depois do parenteses
ALTER TABLE revista AUTO_INCREMENT = 100;

-- LIMPAR OS DADOS DA TABELA
TRUNCATE TABLE revista;

select * from revista;

drop table revista;

desc revista;

