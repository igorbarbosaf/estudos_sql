-- Exercícios – funções agregadas

-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select idvendedor, round(avg(valor), 2) as media_valor from pedido group by idvendedor having avg(valor) > 300;

-- 2. Os vendedores que venderam mais que R$ 1500,00.
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;

-- 3. O somatório das vendas de cada vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 4. A quantidade de municípios.
select * from municipio;
select count(*) from municipio;

-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select * from uf;
select count(idmunicipio) from municipio where iduf = 1 or iduf = 2;

-- 6. A quantidade de municípios por estado.
select * from uf;
select iduf, count(idmunicipio) from municipio group by iduf;

-- 7. A quantidade de clientes que informaram o logradouro.
select count(logradouro) from cliente;

-- 8. A quantidade de clientes por município.
select idmunicipio, count(idcliente) from cliente group by idmunicipio;

-- 9. A quantidade de fornecedores.
select * from fornecedor;
select count(*) from fornecedor;

-- 10. A quantidade de produtos por fornecedor.
select idfornecedor, count(idproduto) from produto group by idfornecedor;

-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.
select * from fornecedor;
select round(avg(valor), 2) as media_precos from produto where idfornecedor = 1;

-- 12. O somatório dos preços de todos os produtos.
select sum(valor) from produto;

-- 13. O nome do produto e o preço somente do produto mais caro.
select * from produto;
select nome, valor from produto order by valor desc limit 1;

-- 14. O nome do produto e o preço somente do produto mais barato.
select nome, valor from produto order by valor limit 1;

-- 15. A média de preço de todos os produtos.
select round(avg(valor), 2) as media_precos from produto;

-- 16. A quantidade de transportadoras.
select * from transportadora;
select count(*) from transportadora;

-- 17. A média do valor de todos os pedidos.
select round(avg(valor), 2) as media_valor from pedido;

-- 18. O somatório do valor do pedido agrupado por cliente.
select idcliente, sum(valor) from pedido group by idcliente;

-- 19. O somatório do valor do pedido agrupado por vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 20. O somatório do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora;

-- 21. O somatório do valor do pedido agrupado pela data.
select * from pedido;
select data_pedido, sum(valor) from pedido group by data_pedido;

-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente, idvendedor, idtransportadora, sum(valor) from pedido group by idcliente, idvendedor, idtransportadora;

-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;

-- 24. A média do valor do pedido do vendedor André.
select * from vendedor;
select round(avg(valor), 2) as media_valor from pedido where idvendedor = 1;

-- 25. A média do valor do pedido da cliente Jéssica.
select * from cliente;
select round(avg(valor), 2) as media_valor from pedido where idcliente = 15;

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
select * from transportadora;
select count(*) as quantidade_pedido from pedido where idtransportadora = 1;

-- 27. A quantidade de pedidos agrupados por vendedor.
select idvendedor, count(*) as quantidade_pedido from pedido group by idvendedor;

-- 28. A quantidade de pedidos agrupados por cliente.
select idcliente, count(*) as quantidade_pedido from pedido group by idcliente;

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(*) as quantidade_pedido from pedido where data_pedido between '2008-04-15' and '2008-04-25';

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select count(*) as quantidade_pedido from pedido where valor > 1000;

-- 31. A quantidade de microcomputadores vendida.
select * from produto;
select sum(quantidade) as quantidade_vendida from pedido_produto where idproduto = 1;

-- 32. A quantidade de produtos vendida agrupado por produto.
select idproduto, sum(quantidade) as quantidade_vendida from pedido_produto group by idproduto;

-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select * from pedido_produto;
select idpedido, sum(valor_unitario) from pedido_produto group by idpedido;

-- 34. A quantidade de produtos agrupados por pedido.
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 35. O somatório dos valores unitários de todos os produtos.
select sum(valor_unitario) as valor_total from pedido_produto;

-- 36. A média dos produtos do pedido 6.
select * from pedido;
select round(avg(valor_unitario), 2) as media_valor from pedido_produto where idpedido = 6;

-- 37. O valor do maior produto do pedido.
select max(valor_unitario) as maior_valor from pedido_produto; 

-- 38. O valor do menor produto do pedido.
select min(valor_unitario) as menor_valor from pedido_produto;

-- 39. O somatório da quantidade de produtos por pedido.
select idpedido, sum(quantidade) as quantidade_total from pedido_produto group by idpedido;

-- 40. O somatório da quantidade de todos os produtos do pedido.
select sum(valor_unitario) from pedido_produto;