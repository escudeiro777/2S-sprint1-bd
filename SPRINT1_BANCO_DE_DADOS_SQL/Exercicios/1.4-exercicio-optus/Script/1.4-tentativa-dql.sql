CREATE DATABASE OPTUS;
GO

USE OPTUS;
GO

CREATE TABLE ARTISTA(
 idArtista SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeArtista VARCHAR(20) NOT NULL
);
GO

CREATE TABLE ESTILO(
 idEstilo TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeEstilo VARCHAR(20) NOT NULL
);
GO

CREATE TABLE ALBUM(
 idAlbum SMALLINT PRIMARY KEY IDENTITY(1,1),
 idArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA(idArtista),
 idEstilo TINYINT FOREIGN KEY REFERENCES ESTILO(idEstilo),
 nomeAlbum VARCHAR(25) NOT NULL,
 localizacao VARCHAR (256) NOT NULL,
 quantMin VARCHAR (400) NOT NULL,
 albumAtv CHAR (3) NOT NULL
);
GO

DROP TABLE ALBUM

CREATE TABLE USUARIO(
 idUsuario SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeUsuario VARCHAR(25) NOT NULL,
 end_email VARCHAR (256) NOT NULL UNIQUE,
 senha VARCHAR (20) NOT NULL UNIQUE,
 permissao CHAR (14)
);
GO

INSERT ARTISTA(nomeArtista)
VALUES ('luciano'),('saulo')

INSERT ESTILO (nomeEstilo)
VALUES ('folk'),('indie'),('mpb')

CREATE TABLE ALBUM(
 idAlbum SMALLINT PRIMARY KEY IDENTITY(1,1),
 idArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA(idArtista),
 idEstilo TINYINT FOREIGN KEY REFERENCES ESTILO(idEstilo),
 nomeAlbum VARCHAR(25) NOT NULL,
 localizacao VARCHAR (256) NOT NULL,
 quantMin VARCHAR (400) NOT NULL,
 albumAtv CHAR (3) NOT NULL
);
GO

INSERT ALBUM (idArtista,idEstilo,nomeAlbum,localizacao,quantMin,albumAtv)
VALUES (1,1,'befolkused', 'sao paulo', '256min', 'sim'),(1,2,'amdgmaf','noruega','451min', 'sim'),(2,3,'as melhores do chico','rio de janeiro','852min','nao')

INSERT USUARIO (nomeUsuario, end_email,senha, permissao)
VALUES ('nayara','nayara@email.com','123456', 'nao'), ('heitor','heitor@email.com','47258','sim')

CREATE TABLE USUARIO(
 idUsuario SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeUsuario VARCHAR(25) NOT NULL,
 end_email VARCHAR (256) NOT NULL UNIQUE,
 senha VARCHAR (20) NOT NULL UNIQUE,
 permissao CHAR (14)
);
GO

SELECT * FROM ARTISTA
SELECT * FROM ESTILO
SELECT * FROM ALBUM
SELECT * FROM USUARIO

