CREATE DATABASE CLINICA_VET;
GO

USE CLINICA_VET;
GO

CREATE TABLE CLINICA(
 idClinica TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeClinica VARCHAR(30) NOT NULL UNIQUE,
 cnpj CHAR (14) NOT NULL UNIQUE,
 endereco VARCHAR (200) NOT NULL UNIQUE
);
GO


CREATE TABLE VET(
 idVet TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeVet VARCHAR(20) NOT NULL,
 crmv CHAR(6) UNIQUE,
 idClinica TINYINT FOREIGN KEY REFERENCES CLINICA(idClinica)
);
GO

CREATE TABLE TIPOPET(
 idTipoPet TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeTipo VARCHAR(20) NOT NULL
);
GO


CREATE TABLE RACA(
 idRaca SMALLINT PRIMARY KEY IDENTITY(1,1),
 idTipoPet TINYINT FOREIGN KEY REFERENCES TIPOPET(idTipoPet),
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
 nomePet VARCHAR(20) NOT NULL,
 dataNascimento DATE,
 idRaca SMALLINT FOREIGN KEY REFERENCES RACA(idRaca),
 idDono SMALLINT FOREIGN KEY REFERENCES DONO(idDono),
);
GO

CREATE TABLE ATENDIMENTO(
 idAtendimento SMALLINT PRIMARY KEY IDENTITY(1,1),
 descricao VARCHAR (200),
 dataAtendimento DATETIME NOT NULL,
 idVet TINYINT FOREIGN KEY REFERENCES VET(idVet),
 idPet SMALLINT FOREIGN KEY REFERENCES PET(idPet)
);
GO

INSERT CLINICA (nomeClinica,cnpj,endereco)
VALUES ('bicho mania','11111111111111','av.professor luiz ignacio anhaia mello, 652')
GO

INSERT TIPOPET (nomeTipo)
VALUES ('cachorro'),('gato'),('papagaio'),('coelho')
GO

INSERT RACA (idTipoPet, nomeRaca)
VALUES (1,'yorkshire'),(2,'siames'),(3,'papagaio-do-mangue'),(4,'leao')
GO

INSERT DONO (nomeDono)
VALUES ('nayara'),('iara')
GO

INSERT PET(idRaca,idDono,nomePet,dataNascimento)
VALUES (1,1,'toby','22/01/2021'), (2,2,'nina','24/08/2016')
GO

INSERT VET (idClinica,nomeVet,crmv)
VALUES (1,'suzana', '123456'), (1,'lilian','654321')
GO

INSERT ATENDIMENTO (descricao,dataAtendimento,idVet,idPet)
VALUES('o paciente esta bem, tosse leve','09/08/2021',1,1),('o paciente esta ok','09/08/2021',2,2)
GO

SELECT * FROM CLINICA
GO
SELECT * FROM VET
GO
SELECT * FROM TIPOPET
GO
SELECT * FROM RACA
GO
SELECT * FROM DONO
GO
SELECT * FROM PET
GO
SELECT * FROM ATENDIMENTO
GO

-- listar todos os veterinários (nome e CRMV) de uma clínica (nome clinica)
SELECT nomeVet, crmv, nomeClinica FROM VET
INNER JOIN Clinica
ON CLINICA.idClinica = VET.idClinica
WHERE CLINICA.idClinica = 1;

-- listar todas as raças que começam com a letra S
SELECT * FROM RACA
WHERE nomeRaca LIKE 'S%';

-- listar todos os tipos de pet que terminam com a letra O
SELECT * FROM tipoPet
WHERE nomeTipo LIKE '%o';

-- listar todos os pets mostrando os nomes dos seus donos
-- ALIAS (apelido) AS
SELECT idPet, PET.nomePet pet, dataNascimento AS 'data de nascimento', dono.nomeDono AS dono FROM pet
INNER JOIN dono
ON pet.idDono = dono.idDono;


-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, 
-- o nome, a raça e o tipo do pet que foi atendido,
-- o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT idAtendimento, V.nomeVet [veterinário], P.nomePet pet,
R.nomeRaca [raça], TP.nomeTipo [espécie], D.nomeDono dono, nomeClinica [nome clinica]
FROM atendimento AS A
LEFT JOIN VET V
ON A.idVet = V.idVET
INNER JOIN pet P
ON A.idPet = P.idPet
INNER JOIN raca R
ON P.idRaca = R.idRaca
INNER JOIN tipoPet TP
ON TP.idTipoPet = R.idTipoPet
INNER JOIN dono D
ON P.idDono = D.idDono
INNER JOIN clinica C
ON C.idClinica = V.idClinica;
