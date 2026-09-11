create domain documento as varchar(15); -- documento: 12345678901
create domain tipo as char(1); -- tipo: 'F' ou 'J'
create domain texto as text; -- texto longo: 'Este é um texto longo'

-- alterando o nome que escrevi errado
alter domain quantiddade rename to quantidade;

create domain quantiddade as smallint; -- quantidade: 1, 2, 3...

alter table bairro_auditoria alter column data_criacao type data_hora;

drop view dados_pedido;

alter table cliente alter column nome type nome_longo;
alter table cliente alter column cpf type documento;
alter table cliente alter column rg type documento;
alter table cliente alter column data_nascimento type data;
alter table cliente alter column genero type tipo;
alter table cliente alter column logradouro type nome_longo;
alter table cliente alter column numero type nome_curto;
alter table cliente alter column idprofissao type idmedio;
alter table cliente alter column idnacionalidade type idmedio;
alter table cliente alter column idbairro type idmedio;
alter table cliente alter column idmunicipio type idmedio;
alter table cliente alter column idcomplemento type idmedio;

alter table complemento alter column nome type nome_medio;

drop view produto_fornecedor;
drop view municipio_uf;
drop view transportadora_uf;

alter table fornecedor alter column nome type nome_medio;

alter table municipio alter column nome type nome_medio;
alter table municipio alter column iduf type idmedio;

alter table nacionalidade alter column nome type nome_medio;

alter table pedido alter column idpedido type bigint;
alter table pedido alter column idcliente type idmedio;
alter table pedido alter column idtransportadora type idmedio;
alter table pedido alter column idvendedor type idmedio;
alter table pedido alter column data_pedido type data;
alter table pedido alter column valor type moeda;

drop view produto_pedido_total;

alter table pedido_produto alter column idpedido type idmedio;
alter table pedido_produto alter column idproduto type idmedio;
alter table pedido_produto alter column quantidade type quantidade;
alter table pedido_produto alter column valor_unitario type moeda;


alter table pedidos_apagados alter column idpedido type idlongo;
alter table pedidos_apagados alter column idcliente type idmedio;
alter table pedidos_apagados alter column idtransportadora type idmedio;
alter table pedidos_apagados alter column idvendedor type idmedio;
alter table pedidos_apagados alter column data_pedido type data;
alter table pedidos_apagados alter column valor type moeda;

alter table produto alter column idfornecedor type idmedio;
alter table produto alter column nome type nome_medio;
alter table produto alter column valor type moeda;

alter table profissao alter column nome type nome_medio;

alter table transportadora alter column idmunicipio type idmedio;
alter table transportadora alter column nome type nome_medio;
alter table transportadora alter column logradouro type nome_longo;
alter table transportadora alter column numero type nome_curto;

alter table uf alter column nome type nome_medio;
alter table uf alter column sigla type siglas;

alter table vendedor alter column nome type nome_medio;