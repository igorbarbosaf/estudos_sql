--Exercícios índices

--1. Adicione índices nas seguintes tabelas e campos

--a. Pedido – data do pedido
drop index idx_pdd_data_pedido
create index idx_pdd_data_pedido on pedido (data_pedido);

--b. Produto – nome
create index idx_prd_nome on produto (nome);