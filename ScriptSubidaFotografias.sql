CREATE DATABASE tiendaFotos;

USE tiendaFotos;

CREATE TABLE Usuario(
  idUsuario int unsigned AUTO_INCREMENT	NOT NULL PRIMARY KEY,
  nombre varchar(60) NOT NULL,
  correo varchar(100) NOT NULL
);

CREATE TABLE Pedidos(
  idPedido int unsigned AUTO_INCREMENT	NOT NULL PRIMARY KEY,
  numRef varchar(20) NOT NULL,
  idUsuario int unsigned NOT NULL,
  FOREIGN KEY (idUsuario) references Usuario(idUsuario)

);

CREATE TABLE Fotografias(
  idFotografia int unsigned AUTO_INCREMENT	NOT NULL PRIMARY KEY,
  nombreArchivo varchar(50) NOT NULL,
  imagen longblob NOT NULL,
  tipo char(1) NOT NULL,
  rutaImg varchar(300) NOT NULL,
  idPedido int unsigned NOT NULL,
  FOREIGN KEY (idPedido) references Pedidos(idPedido)
);

CREATE TABLE Tipos(
  idTipo int unsigned AUTO_INCREMENT	NOT NULL PRIMARY KEY,
  nombre char(5) NOT NULL,
  idFotografia int unsigned NOT NULL,
  FOREIGN KEY (idFotografia) references Fotografias(idFotografia)
);
