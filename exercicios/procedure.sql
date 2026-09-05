-- Exercícios procedures

--1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento, 
--e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro
create or replace procedure reajuste_produto(idp integer, percentual float) language sql as
$$
	update produto set valor = valor + ((valor * percentual)/ 100)
	where idproduto = idp
$$;

call reajuste_produto(1, 10);

select * from produto where idproduto = 1;

--2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de
--dados somente o produto com o ID correspondente
create procedure apagar_produto(idp integer) language sql as
$$
	delete from produto where idproduto = idp
$$;

select * from produto;