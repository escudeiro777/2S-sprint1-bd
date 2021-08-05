---BANCO DE DADOS CATALOGO_TARDE CRIADO
CREATE DATABASE CATALOGO_TARDE; 
GO

---DEFINE O BANCO DE DADOS QUE VAI SER UTILIZADO
USE CATALOGO_TARDE;
GO

CREATE TABLE GENERO_FILME(
idGenero TINYINT PRIMARY KEY IDENTITY (1,1),
nomeGenero VARCHAR(20) NOT NULL

);
GO

--ALTER TABLE GENERO_FILME
--DROP COLUMN nomeGenero

ALTER TABLE GENERO_FILME
ADD nomeGenero VARCHAR(20) NOT NULL


CREATE TABLE FILME(
idFilme SMALLINT PRIMARY KEY IDENTITY (1,1),
idGenero TINYINT FOREIGN KEY REFERENCES GENERO_FILME(idGenero),
tituloFilme VARCHAR(50) NOT NULL
);