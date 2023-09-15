CREATE DATABASE Loja;
USE Loja;

CREATE TABLE Cliente (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Telefone VARCHAR(15) NOT NULL
);


CREATE TABLE Produtos (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(45) NULL,
    Descricao VARCHAR(45) NULL,
    Preco DOUBLE NOT NULL
);

CREATE TABLE Vendas (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Data_Venda DATE NOT NULL,
    Valor_Total DOUBLE NOT NULL,
    ID_Cliente INT NOT NULL,
    ID_Produto INT NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(Id),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID)
);

CREATE TABLE Transportadora (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_Venda INT NOT NULL,
    Data_envio Date NOT NULL,
    Status_envio VARCHAR(45) NOT NULL,
    FOREIGN KEY (ID_Venda) REFERENCES Vendas(ID)
);
use loja;

INSERT INTO Cliente (Nome, Endereco, Email, Telefone) VALUES ('José', 'rua anibal borin 421', 'jose@hotmail.com', '44 99820313');
INSERT INTO produtos (Nome, Descricao, preco) VALUES ('Caneta', 'caneta na cor azul', 2.50);
INSERT INTO Vendas (Data_venda, Valor_Total, ID_Cliente, ID_produto) VALUES (20230912, 2.50, 1, 1);
INSERT INTO Transportadora (Data_envio, Status_envio, ID_venda) VALUES (20230912, 'Em rota de entrega', 10);

SELECT * FROM cliente;
SELECT * FROM Produtos;
SELECT * FROM Vendas;
SELECT * FROM Transportadora;

