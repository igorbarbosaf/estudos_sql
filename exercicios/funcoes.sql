--1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
create or replace function get_valor_pedido(idp integer) returns varchar(20) language plpgsql as
$$
declare r varchar(20);
begin
	select formata_moeda(valor) into r from pedido where idpedido = idp;
	return r;
end;
$$;

select get_valor_pedido(idpedido) from pedido;

--2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor
create or replace function get_maior_pedido() returns integer language plpgsql as
$$
declare m integer;
begin
	select idpedido into m from pedido where valor = (select max(valor) from pedido);
	return m;
end;
$$;

select get_maior_pedido() from pedido;
select get_maior_pedido();