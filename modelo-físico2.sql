create database faculdade
default character set utf8
default collate utf8_general_ci; 

use faculdade;

CREATE TABLE aluno (
    nome varchar(200) NOT NULL,
    matricula varchar(20) NOT NULL,
    PRIMARY KEY (matricula)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE turma (
	id int NOT NULL AUTO_INCREMENT,
    numero int NOT NULL,
    ano date NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE curso ( 
	id int NOT NULL AUTO_INCREMENT,
    nome varchar(200) NOT NULL,
    coordenador varchar(200) NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE materia (
	id int NOT NULL AUTO_INCREMENT,
    nome varchar(200) NOT NULL,
    cargahoraria int NOT NULL,
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE professor (
	id int NOT NULL AUTO_INCREMENT,
    nome varchar(200) NOT NULL,
    matricula int NOT NULL,
    PRIMARY KEY (id)
    ) DEFAULT CHARSET = utf8mb4; 

CREATE TABLE alunoturma (
	idTurma int NOT NULL,
    matricula int NOT NULL,
    id int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    FOREIGN KEY (idTurma) REFERENCES turma(id),
    FOREIGN KEY (matricula) REFERENCES matricula(id)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE cursomateria (
	id int NOT NULL AUTO_INCREMENT,
    idCurso varchar(200) NOT NULL,
    idMateria varchar(200) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idCurso) REFERENCES curso(id),
    FOREIGN KEY (idMateria) REFERENCES materia(id)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE materiaprofessor (
	id int NOT NULL AUTO_INCREMENT,
    idMateria varchar(200) NOT NULL,
    idProfessor varchar(200) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idMateria) REFERENCES materia(id),
    FOREIGN KEY (idProfessor) REFERENCES professor(id)
) DEFAULT CHARSET = utf8mb4;
    

    
    