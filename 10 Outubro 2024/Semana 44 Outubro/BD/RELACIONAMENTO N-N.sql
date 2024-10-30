create database sprint3;

use sprint3;

create table aluno (
idAluno int primary key auto_increment,
nome varchar(45),
email varchar(45)
);

insert into aluno (nome) values
 ('PicaPau'),
 ('Pernalonga');
 
create table curso (
idCurso int primary key auto_increment,
nome varchar(45),
cargaHoraria time
)auto_increment = 1000;

insert into curso (nome) values
('ingles'),
('Espanhol');

create table matricula (
idMatricula int auto_increment,
fkAluno int,
	constraint fkAlunoMatricula foreign key (fkAluno)
		references aluno(idAluno),
fkCurso int,
	constraint fkCursoMatricula foreign key (fkCurso) 
		references curso(idCurso),
	constraint pkComposta
		primary key (idMatricula, fkAluno, fkCurso),
nivel varchar(45),
nota float,
dtMatricula date
);

insert into matricula values
(default,1,1000,'iniciante',7,'2023-10-01'),
(default,1,1000,'intermediario',null,'2023-10-28'),
(default,2,1000,'intermediario',null,'2023-10-28'),
(default,1,1001,'avançado',null,'2023-10-28');

select * from matricula;

select aluno.nome as Aluno,
	curso.nome as Curso,
    nivel,
    nota from aluno join matricula 
		on idAluno = fkAluno
			join curso
				on idCurso = fkCurso;
                

update matricula set nota = 5
	where idMatricula = 2 and fkAluno = 1 and fkCurso = 1000;
    
    
    
    
    
    
    
    
    
    
    
    
    