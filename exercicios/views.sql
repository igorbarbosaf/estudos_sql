--1. O nome, a profissão, a nacionalidade, o complemento, o município, a 
--unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o 
--gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
select * from complemento;

drop view cliente_dados;

create view cliente_dados as
select
	cln.nome as cliente,
	pro.nome as profissao,
	nac.nome as nacionalidade,
	cmp.nome as complemento,
	mun.nome as municipio,
	uf.nome as uf,
	brr.nome as bairro,
	cln.cpf,
	cln.rg,
	cln.data_nascimento,
	case cln.genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	end as genero,
	cln.logradouro,
	cln.numero,
	cln.observacoes
from
	cliente cln
left outer join
	profissao pro on cln.idprofissao = pro.idprofissao
left outer join
	nacionalidade nac on cln.idnacionalidade = nac.idnacionalidade
left outer join
	complemento cmp on cln.idcomplemento = cmp.idcomplemento
left outer join
	municipio mun on cln.idmunicipio = mun.idmunicipio
left outer join
	uf on mun.iduf = uf.iduf
left outer join
	bairro brr on cln.idbairro = brr.idbairro;

select * from cliente_dados;

--2. O nome do município e o nome e a sigla da unidade da federação.
select * from municipio;
select * from uf;

drop view municipio_uf;

create view municipio_uf as
select
	mun.nome as municipio,
	uf.nome as uf,
	uf.sigla
from
	municipio mun
left outer join
	uf on mun.iduf = uf.iduf;

select * from municipio_uf;

--3. O nome do produto, o valor e o nome do fornecedor dos produtos.
drop view cliente_profissao;

select * from produto;
select * from fornecedor;

create view produto_fornecedor as
select
	pdt.nome as produto,
	pdt.valor,
	fnc.nome as fornecedor
from
	produto pdt
left outer join
	fornecedor fnc on pdt.idfornecedor = fnc.idfornecedor;

select * from produto_fornecedor;

--4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
select * from transportadora;
select * from municipio;
select * from uf;

drop view transportadora_uf;

create view transportadora_uf as
select
	tpt.nome as transportadora,
	tpt.logradouro,
	tpt.numero,
	uf.nome as uf,
	uf.sigla
from
	transportadora tpt
left outer join
	municipio mun on tpt.idmunicipio = mun.idmunicipio
left outer join
	uf on mun.iduf = uf.iduf;
	
select * from transportadora_uf where sigla = 'PR';

--5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
select * from pedido;
select * from transportadora;
select * from cliente;
select * from vendedor;

drop view dados_pedido;

create view dados_pedido as
select
	pdd.data_pedido,
	pdd.valor,
	tpt.nome as transportadora,
	cln.nome as cliente,
	vdd.nome as vendedor
from
	pedido pdd
left outer join
	transportadora tpt on pdd.idtransportadora = tpt.idtransportadora
left outer join
	cliente cln on pdd.idcliente = cln.idcliente
left outer join
	vendedor vdd on pdd.idvendedor = vdd.idvendedor;

select * from dados_pedido;

--6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
select * from pedido_produto;
select * from produto;

drop view produto_pedido_total;

create view produto_pedido_total as
select
	pdt.nome as produto,
	pdpd.quantidade,
	pdpd.valor_unitario,
	pdpd.quantidade * pdpd.valor_unitario as valor_total
from
	pedido_produto pdpd
left outer join
	produto pdt on pdpd.idproduto = pdt.idproduto;

select * from produto_pedido_total;
