--1. Criar sequências para todas as outras tabelas da base de dados
select * from cliente;

--a. Cliente
select max(idcliente) + 1 from cliente;

create sequence cliente_id_seq minvalue 17;
alter table cliente alter idcliente set default nextval('cliente_id_seq');
alter sequence cliente_id_seq owned by cliente.idcliente;

insert into cliente (nome) values ('Teste 1');
insert into cliente (nome) values ('Teste 2');

delete from cliente where idcliente = 18;

--b. Complemento
select * from complemento;

select max(idcomplemento) + 1 from complemento;

create sequence complemento_id_seq minvalue 3;
alter table complemento alter idcomplemento set default nextval ('complemento_id_seq');
alter sequence complemento_id_seq owned by complemento.idcomplemento;

insert into complemento (nome) values ('Teste 1');
insert into complemento (nome) values ('Teste 2');

delete from complemento where idcomplemento in (3, 4)

--c. Fornecedor
select * from fornecedor;

select max(idfornecedor) + 1 from fornecedor;

create sequence fornecedor_id_seq minvalue 4;
alter table fornecedor alter idfornecedor set default nextval ('fornecedor_id_seq');
alter sequence fornecedor_id_seq owned by fornecedor.idfornecedor;

insert into fornecedor (nome) values ('Teste 1');

delete from fornecedor where idfornecedor = 4;

--d. Município
select * from municipio;

select max(idmunicipio) + 1 from municipio;

create sequence municipio_id_seq minvalue 10;
alter table municipio alter idmunicipio set default nextval ('municipio_id_seq');
alter sequence municipio_id_seq owned by municipio.idmunicipio;

insert into municipio (nome) values ('teste 1');

delete from municipio where idmunicipio = 10;

--e. Nacionalidade
select * from nacionalidade;

select max(idnacionalidade) + 1 from nacionalidade;

create sequence nacionalidade_id_seq minvalue 5;
alter table nacionalidade alter idnacionalidade set default nextval ('nacionalidade_id_seq');
alter sequence nacionalidade_id_seq owned by nacionalidade.idnacionalidade;

insert into nacionalidade (nome) values ('Teste 1');
delete from nacionalidade where idnacionalidade = 5;


--f. Pedido
select * from pedido;

select max(idpedido) + 1  from pedido;

create sequence pedido_id_seq minvalue 16;
alter table pedido alter idpedido set default nextval ('pedido_id_seq');
alter sequence pedido_id_seq owned by pedido.idpedido;

--g. Pedido produto (verificar se é necessário)
select * from pedido_produto;


--h. Profissão
select * from profissao;

select max(idprofissao) + 1 from profissao;

create sequence profissao_id_seq minvalue 6;
alter table profissao alter idprofissao set default nextval ('profissao_id_seq');
alter sequence profissao_id_seq owned by profissao.idprofissao;


--i. Transportadora
select * from transportadora;

select max(idtransportadora) + 1 from transportadora;

create sequence transportadora_id_seq minvalue 3;
alter table transportadora alter idtransportadora set default nextval ('transportadora_id_seq');
alter sequence transportadora_id_seq owned by transportadora.idtransportadora;

--j. UF
select * from uf;

select max(iduf) + 1 from uf;

create sequence uf_id_seq minvalue 7;
alter table uf alter iduf set default nextval ('uf_id_seq');
alter sequence uf_id_seq owned by uf.iduf;


--k. Vendedor
select * from vendedor;

select max(idvendedor) + 1 from vendedor;

create sequence vendedor_id_seq minvalue 9;
alter table vendedor alter idvendedor set default nextval ('vendedor_id_seq');
alter sequence vendedor_id_seq owned by vendedor.idvendedor;

