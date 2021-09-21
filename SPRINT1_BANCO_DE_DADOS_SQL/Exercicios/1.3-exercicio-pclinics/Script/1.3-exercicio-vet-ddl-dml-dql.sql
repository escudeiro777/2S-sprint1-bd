CREATE DATABASE BICHO_MANIA;
GO

USE BICHO_MANIA;
GO

CREATE TABLE CLINICA(
 idClinica TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeClinica VARCHAR(30) NOT NULL
);
GO

DROP TABLE CLINICA

CREATE TABLE VET(
 idVet TINYINT PRIMARY KEY IDENTITY(1,1),
 idClinica TINYINT FOREIGN KEY REFERENCES CLINICA(idClinica),
 nomeVet VARCHAR(20) NOT NULL
);
GO

CREATE TABLE TIPOPET(
 idTipo TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeTipo VARCHAR(20) NOT NULL
);
GO

CREATE TABLE RACA(
 idRaca SMALLINT PRIMARY KEY IDENTITY(1,1),
 idTipo TINYINT FOREIGN KEY REFERENCES TIPOPET(idTipo),
 nomeRaca VARCHAR(25) NOT NULL
);
GO

CREATE TABLE DONO(
 idDono SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeDono VARCHAR(25) NOT NULL
);
GO

CREATE TABLE PET(
 idPet SMALLINT PRIMARY KEY IDENTITY(1,1),
 idRaca SMALLINT FOREIGN KEY REFERENCES RACA(idRaca),
 idDono SMALLINT FOREIGN KEY REFERENCES DONO(idDono),
 nomePet VARCHAR(20) NOT NULL
);
GO

CREATE TABLE ATENDIMENTO(
 idAtendimento SMALLINT PRIMARY KEY IDENTITY(1,1),
 idPet SMALLINT FOREIGN KEY REFERENCES PET(idPet),
 idVet TINYINT FOREIGN KEY REFERENCES VET(idVet)
);
GO

INSERT CLINICA (nomeClinica)
VALUES ('bicho mania')
GO

INSERT VET (idClinica,nomeVet)
VALUES (1,'fernada')
GO

INSERT VET (idClinica,nomeVet)
VALUES (1,'suzana'), (1,'ana')
GO

INSERT TIPOPET (nomeTipo)
VALUES ('cachorro'),('gato'),('papagaio'),('coelho')
GO

INSERT RACA (idTipo, nomeRaca)
VALUES (1,'yorkshire'),(2,'siames'),(3,'papagaio-do-mangue'),(4,'leao')
GO

INSERT DONO (nomeDono)
VALUES ('nayara'),('iara')
GO

INSERT PET(idRaca,idDono,nomePet)
VALUES (1,1,'toby'), (2,2,'nina')
GO


INSERT ATENDIMENTO (idPet,idVet)
VALUES(1,2),(4,1)
GO

SELECT * FROM CLINICA
SELECT * FROM VET
SELECT * FROM TIPOPET
SELECT * FROM RACA
SELECT * FROM DONO
SELECT * FROM PET
SELECT * FROM ATENDIMENTO
