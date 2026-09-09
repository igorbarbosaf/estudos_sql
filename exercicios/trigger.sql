-- Exercícios triggers
--1. Crie uma tabela chamada PEDIDOS_APAGADOS
select * from pedido;
create table pedidos_apagados (
	idpedido integer,
	idcliente integer,
	idtransportadora integer,
	idvendedor integer,
	data_pedido date,
	valor decimal(10,2),
	data_criacao timestamp
);

--2. Faça uma trigger que quando um pedido for apagado, todos os seus dados devem
--ser copiados para a tabela PEDIDOS_APAGADOSExercícios triggers
create or replace function pedido_apagados_log() returns trigger language plpgsql as
$$
begin
	insert into pedidos_apagados (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor, data_criacao)
	values (old.idpedido, old.idcliente, old.idtransportadora, old.idvendedor, old.data_pedido, old.valor, current_timestamp);
	return old;
end;
$$;

create or replace trigger log_pedido_trigger before delete on pedido for each row execute procedure pedido_apagados_log();

select * from pedido;

select idpedido from pedido where idpedido not in (select idpedido from pedido_produto);

delete from pedido where idpedido = 17;

select * from pedidos_apagados;