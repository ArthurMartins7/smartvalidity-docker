  -- Corredores
    insert into Corredor (nome, responsavel) values ('Bebidas', 'Vilmar');
	insert into Corredor (nome, responsavel) values ('Mercearia', 'Ruan');
	insert into Corredor (nome, responsavel) values ('Limpeza', 'Emerson');
	insert into Corredor (nome, responsavel) values ('Hortifruti', 'Roni');

-- Categorias

-- Categorias do corredor de bebidas
insert into Categoria (tipo, idCorredor) values ('Águas', 1);
insert into Categoria (tipo, idCorredor) values ('Água de coco', 1);
insert into Categoria (tipo, idCorredor) values ('Chás', 1);
insert into Categoria (tipo, idCorredor) values ('Vinhos', 1);


-- Categorias do corredor Mercearia
insert into Categoria (tipo, idCorredor) values ('Massas', 2);
insert into Categoria (tipo, idCorredor) values ('Grãos, arroz e feijão', 2);
insert into Categoria (tipo, idCorredor) values ('Azeites e óleos', 2);
insert into Categoria (tipo, idCorredor) values ('Conservas', 2);


-- Produto

-- Proutos  E ITEM_PRODUTOS da categoria Aguas
insert into Produto (descricao, marca, unidade_medida, quantidade, cod_barras, idCategoria)
Values ('Água Mineral Imperatriz Premium S/Gás 500ml', 'Imperatriz', '500ml', 52, '7896806400105', 1);

INSERT INTO Item_Produto (lote, preco_compra, preco_venda, data_vencimento, data_fabricacao, data_recebimento, idProduto)
 VALUES ('Lote001', 1.29, 2.69, '2024-12-31', '2024-05-01', '2024-06-02', 1);  -- Água Mineral Imperatriz Premium S/Gás 500ml (idProduto 1)

insert into Produto (descricao, marca, unidade_medida, quantidade, cod_barras, idCategoria)
Values ('Água Mineral Santa Rita Sem Gás 10l', 'Santa Rita', '10l', 37, '7898228200134', 1);

INSERT INTO Item_Produto (lote, preco_compra, preco_venda, data_vencimento, data_fabricacao, data_recebimento, idProduto)
VALUES ('Lote002', 5.20, 15.59, '2024-11-30', '2024-04-15', '2024-06-03', 2); -- Água Mineral Santa Rita Sem Gás 10l (idProduto 2)

-- Produtos e item_produto da categoria Massas
insert into Produto (descricao, marca, unidade_medida, quantidade, cod_barras, idCategoria)
Values ('Massa Conchiglioni Paganini 500g', 'Paganini', '500g', 205, '7898152990408', 2);

INSERT INTO Item_Produto (lote, preco_compra, preco_venda, data_vencimento, data_fabricacao, data_recebimento, idProduto)
VALUES ('Lote003', 10.99, 22.99, '2025-12-27 ', '2024-02-13 14:30:00', '2024-06-03 09:20:05', 3); -- Massa Conchiglioni Paganini 500g (idProduto 3)
