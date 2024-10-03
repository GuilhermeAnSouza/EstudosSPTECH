-- CRIAR BANCO DE DADOS
CREATE DATABASE ADSB;

-- TODO COMANDO MYSQL TERMINA COM ";"

-- SELECIONAR O BANCO DE DADOS
USE ADSB;

-- CRIAR A TABELA ALUNO (CHAVE PRIMÁRIA TIPO TEXTO SÓ É USADO EM ALGUNS CONTEXTO, NA MAIORIA SÃO NÚMEROS SEQUENCIAIS) 
CREATE TABLE ALUNO (
-- PK = PRIMARY KEY 
ra char(8) primary key,
nome varchar(50),
email varchar(25)
);

-- varchar = varia a quantidade de caracteres EX (NOME)
-- char = não varia EX (CPF)

-- descrever os campos da tabela
describe ALUNO;
-- "DESC ALUNO;" também funcionaria da mesma forma

-- inserir dados na tabela
INSERT INTO ALUNO VALUES
	('01242061', 'Felipe', 'felipe@sptech.school');
    
-- nosso primeiro SELECT
-- EXIBIR OS DADOS DA TABELA
SELECT ra, nome, email FROM aluno;
SELECT * FROM aluno;
-- AMBOS FARÃO A MESMA COISA, POIS O * É TUDO, E "RA NOME EMAIL" SÃO TODOS OS CAMPOS

INSERT INTO ALUNO values
    ('02242122', 'Cainã COM C', 'caina@sptech.school');
    
SELECT * FROM ALUNO;

-- EXIBIR APENAS O ALUNO CUJO O NOME É FELIPE
select * FROM ALUNO
	where nome = 'Felipe';

select ra, nome FROM ALUNO
	where nome = 'Guilherme' AND ra = '01242097';

-- EXIBIR OS ALUNOS CUJO O NOME TERMINA COM E
-- '%" SIGNIFICA QUE NÃO IMPORTA O QUE TEM ATRÁS
SELECT NOME FROM ALUNO
	WHERE NOME LIKE '%E';
    
-- cujo o nome começa com "f"

SELECT NOME FROM ALUNO
	WHERE NOME LIKE 'F%';
    
-- CUJO O NOME CONTEM "L"

SELECT * FROM ALUNO
	WHERE NOME LIKE '%L%';

-- CUJO O NOME A SEGUNDA LETRA É "E"

SELECT * FROM ALUNO
	WHERE NOME LIKE '_E%';
    
SELECT * FROM ALUNO
	WHERE NOME LIKE '%A %';
    
-- ORDENAR POR NOME
SELECT * FROM ALUNO ORDER BY NOME;

-- ORDENAR POR NOME DESCRESCENTE
SELECT * FROM ALUNO ORDER BY NOME DESC;

