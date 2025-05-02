create database Cinema
USE Cinema;


CREATE TABLE Filme (
	id_filme INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(255) NOT NULL,
	duracao_minutos INT,
	genero VARCHAR(50) NOT NULL
);

CREATE TABLE Sessao (
	id_sessao INT PRIMARY KEY AUTO_INCREMENT,
	id_filme INT  FOREIGN KEY (id_filme) REFERENCES Filme(id),
	data_sessao DATE NOT NULL,
	horario TIME NOT NULL,
	sala VARCHAR (20) NOT NULL,
	capacidade_maxima INT NOT NULL
);

CREATE TABLE Ingresso(
	id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    id_sessao INT FOREIGN KEY,(id_sessao) REFERENCES Sessao(id),
    nome_cliente VARCHAR(100) NOT NULL,
    valor_pago DECIMAL(6,2) NOT NULL 
)


