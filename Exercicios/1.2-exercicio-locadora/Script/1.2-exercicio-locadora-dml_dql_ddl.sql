CREATE DATABASE LOCADORA;
GO

USE LOCADORA;
GO

CREATE TABLE EMPRESA(
 idEmpresa SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeEmpresa VARCHAR(30) NOT NULL
);
GO

CREATE TABLE MARCA(
 idMarca SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeMarca VARCHAR(20) NOT NULL
);
GO



CREATE TABLE MODELO(
 idModelo SMALLINT PRIMARY KEY IDENTITY(1,1),
 idMarca SMALLINT FOREIGN KEY REFERENCES MARCA(idMarca),
 nomeModelo VARCHAR(25) NOT NULL
);
GO

CREATE TABLE VEICULO(
 idVeiculo SMALLINT PRIMARY KEY IDENTITY(1,1),
 idModelo SMALLINT FOREIGN KEY REFERENCES MODELO(idModelo),
 idEmpresa SMALLINT FOREIGN KEY REFERENCES EMPRESA(idEmpresa),
 placa VARCHAR(10) NOT NULL
);
GO

CREATE TABLE CLIENTE(
 idCLiente SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeCliente VARCHAR(25) NOT NULL,
 cpfCliente VARCHAR(13) NOT NULL
);
GO

CREATE TABLE ALUGUEL(
 idAluguel SMALLINT PRIMARY KEY IDENTITY(1,1),
 idVeiculo SMALLINT FOREIGN KEY REFERENCES VEICULO(idVeiculo),
 idCliente SMALLINT FOREIGN KEY REFERENCES CLIENTE(idCliente)
);
GO

INSERT EMPRESA (nomeEmpresa)
VALUES ('unidas'), ('movida')

SELECT * FROM EMPRESA

INSERT MARCA (nomeMarca)
VALUES ('chevrolet'), ('fiat')

SELECT * FROM MARCA

INSERT MODELO (idMarca,nomeModelo)
VALUES (1,'cruze'),(2,'toro')

SELECT * FROM MODELO

INSERT VEICULO (idModelo,idEmpresa,placa)
VALUES (3,1,'CNH1234'),(4,2,'FGV5665')

SELECT * FROM VEICULO

INSERT CLIENTE (nomeCliente,cpfCliente)
VALUES ('lucas','11111111111'),('saulo','22222222222')

SELECT * FROM CLIENTE

INSERT ALUGUEL(idVeiculo,idCliente)
VALUES (1,2),(2,1)

SELECT * FROM ALUGUEL



/*CREATE TABLE ALUGUEL(
 idAluguel SMALLINT PRIMARY KEY IDENTITY(1,1),
 idVeiculo SMALLINT FOREIGN KEY REFERENCES VEICULO(idVeiculo),
 idCliente SMALLINT FOREIGN KEY REFERENCES CLIENTE(idCliente)
);
GO*/