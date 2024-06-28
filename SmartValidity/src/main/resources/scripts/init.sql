CREATE DATABASE IF NOT EXISTS SmartValidity;

USE SmartValidity;

CREATE TABLE if not exists SmartValidity.Corredor (
idCorredor int not null PRIMARY KEY auto_increment,
nome varchar(255),
responsavel varchar(255)
);

CREATE TABLE if not exists SmartValidity.Categoria (
idCategoria int not null PRIMARY KEY auto_increment,
tipo varchar(255),
idCorredor int not null,
FOREIGN KEY(idCorredor) REFERENCES Corredor (idCorredor)
);

CREATE TABLE if not exists SmartValidity.Produto (
idProduto int not null PRIMARY KEY auto_increment,
descricao varchar(255),
marca varchar(255),
unidade_medida varchar(50),
quantidade int,
cod_barras varchar(20),
idCategoria int not null,
FOREIGN KEY(idCategoria) REFERENCES Categoria (idCategoria)
);

CREATE TABLE if not exists SmartValidity.Item_Produto (
idItem_Produto int not null primary key auto_increment,
lote varchar(255),
preco_compra decimal(10,2),
preco_venda decimal(10,2),
data_vencimento date,
data_fabricacao datetime,
data_recebimento datetime,
idProduto int not null,
FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)
);

CREATE TABLE if not exists SmartValidity.Fornecedor (
idFornecedor int not null PRIMARY KEY auto_increment,
nome varchar(255),
telefone varchar(255),
cnpj varchar(18) unique
);

CREATE TABLE if not exists SmartValidity.Endereco (
idEndereco int not null PRIMARY KEY auto_increment,
pais varchar(255),
estado varchar(255),
cidade varchar(255),
bairro varchar(255),
rua varchar(255),
numero int,
complemento varchar(255),
cep varchar(9) not null,
idFornecedor int not null,
FOREIGN KEY(idFornecedor) REFERENCES Fornecedor (idFornecedor)
);


CREATE TABLE if not exists SmartValidity.Fornecedor_Produto (
idFornecedor int,
idProduto int,
FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (IdFornecedor),
FOREIGN KEY (idProduto) REFERENCES Produto (idProduto)
);
