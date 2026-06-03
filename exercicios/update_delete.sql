-- Exercícios 
insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (16, 'Maicon', '12349596421', '1234', '10-10-1995', 'F', 'Empresário', null, null, null, null, null, 'Florianópolis', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (18, 'Sandra', null, null, null, 'M', 'Professor', 'Italiana', null, '12', 'Bloco A', null, null, null);

-- 2. Altere os dados do cliente Maicon
--      a. O CPF para 45390569432
update cliente set cpf = '45390569432' where idcliente = 16;

--      b. O sexo para M
update cliente set genero = 'M' where idcliente = 16;

--      c. A nacionalidade para Brasileira
update cliente set nacionalidade = 'Brasileira' where idcliente = 16;

--      d. O UF para SC
update cliente set uf = 'SC' where idcliente = 16;

-- Fazendo a alteração direta
update cliente set cpf = '45390569432', genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16;


-- 3. Altere os dados do cliente Getúlio
--      a. A data de nascimento para 01-04-1978
update cliente set data_nascimento = '01-04-1978' where idcliente = 17;

--      b. O sexto para M
update cliente set genero = 'M' where idcliente = 17;

-- Direto
update cliente set data_nascimento = '01-04-1978', genero = 'M' where idcliente = 17;

-- 4. Altere os dados da cliente Sandra
--      a. O sexo para F
update cliente set genero = 'F' where idcliente = 18;

--      b. A profissão para Professora
update cliente set profissao = 'Professora' where idcliente = 18;

--      c. O número para 123
update cliente set numero = '123' where idcliente = 18;

-- Direto
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18;

-- 5. Apague o cliente Maicon
delete from cliente where idcliente = 16;

-- 6. Apague a cliente Sandra
delete from cliente where idcliente = 18;

-- Podemos também alterar todas colunas de uma vez
-- ex: update cliente
--      set nome      = 'Carlos Silva',
--      profissao = 'Engenheiro',
--      uf        = 'SP',
--      municipio = 'São Paulo'
--      where idcliente = 3;