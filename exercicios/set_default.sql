--1. Adicione valores default na tabela de produtos do pedido

--a. Quantidade com o valor 1
select * from pedido_produto;

alter table pedido_produto alter column quantidade set default 1;


--b. Valor unitário com o valor 0
select * from pedido_produto;
alter table pedido_produto alter column valor_unitario set default 0;

insert into pedido_produto (idpedido, idproduto) values (1, 3);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values (1, 4, 5, 100);

--2. Adicione valor default na tabela de produtos

--a. Valor com o valor 0
select * from produto;

alter table produto alter column valor set default 0;
insert into produto (nome,idfornecedor) values ('Teste default 1', 1);
insert into produto (nome,idfornecedor, valor) values ('Teste default 1', 1, 50);