--1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
select * from nacionalidade;

select
	cln.nome as cliente,
	prf.nome as profissao,
	nac.nome as nacionalidade,
	cln.logradouro as logradouro,
	cln.numero as numero,
	cmp.nome as complemento,
	brr.nome as bairro,
	mun.nome as municipio,
	uf.nome as estado,
	uf.sigla as siglas
from
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao
left outer join
	nacionalidade as nac on cln.idnacionalidade = nac.idnacionalidade
left outer join
	complemento as cmp on cln.idcomplemento = cmp.idcomplemento
left outer join
	bairro as brr on cln.idbairro = brr.idbairro
left outer join
	municipio as mun on cln.idmunicipio = mun.idmunicipio
left outer join
	uf on mun.iduf = uf.iduf;

--2. O nome do produto, o valor e o nome do fornecedor.
select * from produto;

select * from fornecedor;

select
	pdt.nome as produto,
	pdt.valor as valor,
	frn.nome as fornecedor

from
	produto as pdt
inner join
	fornecedor as frn on pdt.idfornecedor = frn. idfornecedor;


--3. O nome da transportadora e o município.
select * from transportadora;

select
	tra.nome as transportadora,
	mun.nome as municipio
from
	transportadora as tra
inner join
	municipio as mun on tra.idmunicipio = mun.idmunicipio;

--4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.

select * from pedido;

select
	pdd.data_pedido as data_pedido,
	pdd.valor as valor,
	cln.nome as cliente,
	tra.nome as transportadora,
	vdd.nome as vendedor
from
	pedido as pdd
inner join
	cliente as cln on pdd.idcliente = cln.idcliente
left outer join
	transportadora as tra on pdd.idtransportadora = tra.idtransportadora
inner join
	vendedor as vdd on pdd.idvendedor = vdd.idvendedor;

--5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.

select * from pedido_produto;

select
	pdt.nome as produto,
	pdpr.quantidade as quantidade,
	pdpr.valor_unitario as valor_unitario
from
	pedido_produto as pdpr
inner join
	produto as pdt on pdpr.idproduto = pdt.idproduto;
	
--6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select * from pedido;

select
	cln.nome as cliente,
	pdd.data_pedido as data_pedido
from
	cliente as cln
inner join
	pedido as pdd on pdd.idcliente = cln.idcliente
order by
	cliente;
	
--7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select
	cln.nome as cliente,
	pdd.data_pedido as data_pedido
from
	cliente as cln
left outer join
	pedido as pdd on cln.idcliente = pdd.idcliente
order by
	cliente


--8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select * from bairro;
select * from cliente;

select
	mun.nome as municipio,
	count(cln.idcliente) as quantidade
from
	cliente as cln
left outer join
	municipio as mun on cln.idmunicipio = mun.idmunicipio
group by
	mun.nome;

--9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
select * from produto;

select
	frn.nome as fornecedor,
	count(prd.idproduto) as quantidade_produtos
from
	produto as prd
inner join
	fornecedor as frn on prd.idfornecedor = frn.idfornecedor
group by
	frn.nome;

--10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select * from pedido;

select
	cln.nome as cliente,
	sum(pdd.valor) as valor_total
from
	pedido as pdd
inner join
	cliente as cln on pdd.idcliente = cln.idcliente
group by
	cln.nome;

--11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select
	vdd.nome as vendedor,
	sum(pdd.valor) as valor_total
from
	pedido as pdd
inner join
	vendedor as vdd on pdd.idvendedor = vdd.idvendedor
group by
	vdd.nome;


--12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select
	trp.nome as transportadora,
	sum(pdd.valor) as valor_total
from
	pedido as pdd
inner join
	transportadora as trp on pdd.idtransportadora = trp.idtransportadora
group by
	trp.nome;

--13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select * from pedido;
select
	cln.nome as cliente,
	count(pdd.idpedido) as quantidade_pedido
from
	pedido as pdd
inner join
	cliente as cln on pdd.idcliente = cln.idcliente
group by
	cln.nome;

--14.O nome do produto e a quantidade vendida (agrupado por produto).
select * from pedido_produto;
select
	pdt.nome as produto,
	sum(pdpd.quantidade) as quantidade_vendida
from
	pedido_produto as pdpd
inner join
	produto as pdt on pdpd.idproduto = pdt.idproduto
group by
	pdt.nome;

--15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select * from pedido_produto;
select
	pdd.data_pedido as data_pedido,
	sum(pdpd.valor_unitario) as total
from
	pedido_produto as pdpd
left outer join
	pedido as pdd on pdpd.idpedido = pdd.idpedido
group by
	pdd.data_pedido;


--16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select
	pdd.data_pedido as data_pedido,
	sum(pdpd.quantidade) as quantidade
from
	pedido_produto as pdpd
inner join
	pedido as pdd on pdpd.idpedido = pdd.idpedido
group by
	pdd.data_pedido;