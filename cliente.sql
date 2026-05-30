create table cliente (                                 -- cria uma tabela chamada "cliente"
	idcliente integer not null,                        -- número inteiro, obrigatório (não pode ser vazio)
	nome varchar(50) not null,                         -- texto até 50 caracteres, obrigatório
	cpf char(11),                                      -- texto fixo de exatamente 11 dígitos, opcional
	rg varchar(15),                                    -- texto variável até 15 caracteres, opcional
	data_nascimento date,                              -- data no formato AAAA-MM-DD, opcional
	genero char(1),                                    -- um único caractere, ex: M ou F, opcional
	profissao varchar(30),                             -- texto até 30 caracteres,  opcional
	nacionalidade varchar(30),                         -- texto até 30 caracteres, opcional
	logradouro varchar(30),                            -- nome da rua/avenida,  opcional
	numero varchar(10),                                -- varchar pois  pode ter letras:12A, S/N
	complemento varchar(30),                           -- apto, bloco, sala, etc..., opcional
	bairro varchar(30),                                -- nome do bairro,  opcional
	municipio varchar(30),                             -- nome da cidade,  opcional
	uf varchar(30),                                    -- estado, ex: GO, SP, RJ, opcional
	observacoes text,                                  -- texto livre sem limite de tamanho, opcional

	-- primary key: garante que cada cliente te um id único
	constraint pk_cln_idcliente primary key (idcliente)-- define idcliente como chave primária

);

-- Inserindo dados as tabelas e valores

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (1 , 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'POrto União', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (2 , 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'Poro União', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (3 , 'Carlos', '87732323227', '55463', '1967-09-10', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart', 'Cto.', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Ruas das Limas', '240', 'casa', 'São Pedro', 'Porto Vitória', 'PR');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', '100', null, 'São Pedro', 'General Carneiro', 'PR');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', null, 'Ctr.', 'São Paulo', 'SP');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (7, 'Anderson', null, null, null, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (8, 'Camila', '9998282828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'Ubeerlância', 'MG');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (9, 'Cristiano', null, null, null, 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa', 'Centro', 'Porto Alegre', 'RS');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (10, 'Fabrício', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, null, null, 'PU', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, null, null, 'Porto União', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', null, 'Rua das Laranjeiras', '200', null, 'C. Nova', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'Casa', 'Cidade N.', 'São Paulo', 'SP');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (14, 'Jerfeson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, null, null, 'União da Vitória', 'PR');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, null, null, 'União da Vitória', 'PR');

-- SELECT: consultar dados de uma tabela
-- Estrutura: select coluna from tabela;
-- Buscar tudo (* = todas as colunas)
select * from cliente;                                         -- * traz todas as colunas de todos os registros

-- Buscar colunas específicas
select nome, data_nascimento from cliente;                     -- traz só as colunas nome e data_nascimento

-- Renomear coluna com alias (as)
-- Aspas duplas quando o alias tiver espaço
select nome,
       data_nascimento as "Data de nascimento"                 -- as renomeia só no resultado, o banco não muda
from cliente;

-- Concatenar colunas com ||
-- || junta textos. Texto fixo entre aspas simples, coluna sem aspas.
select 'CPF: ' || cpf                                         -- junta o texto fixo 'CPF: ' com o valor da coluna cpf
       || ' RG: ' || rg                                       -- continua juntando com ' RG: ' e o valor da coluna rg
       as "CPF e RG"                                          -- dá o nome "CPF e RG" para essa coluna gerada
from cliente;
-- Resultado: CPF: 87732323227 RG: 55463

-- Limitar quantidade de resultados
select * from cliente limit 3;                                -- retorna só os 3 primeiros registros da tabela

-- Resumo:
-- select *          -> todas as colunas
-- select col1, col2 -> colunas específicas
-- as "nome"         -> renomeia coluna no resultado
-- ||                -> concatena (junta) textos e colunas
-- limit N           -> retorna só os N primeiros registros

-- WHERE com comparação de data
select nome, data_nascimento             -- busca nome e data_nascimento
from cliente                             -- da tabela cliente
where data_nascimento > '2000-01-01';    -- somente quem nasceu depois de 01/01/2000


--LIKE: nomes que começam com C
select nome                              -- busca só a coluna nome
from cliente                             -- da tabela cliente
where nome like 'C%';                    -- % = qualquer coisa depois do C

-- LIKE: nomes que contém c em qualquer posição
select nome                              -- busca só a coluna nome
from cliente                             -- da tabela cliente
where nome like '%c%';                   -- % antes e depois = c em qualquer lugar

-- BETWEEN: filtrar por intervalo de datas
select nome, data_nascimento             -- busca nome e data_nascimento
from cliente                             -- da tabela cliente
where data_nascimento                    -- filtra pela coluna data_nascimento
  between '1990-01-01'                   -- data inicial do intervalo (inclusa)
  and '1998-01-01';                      -- data final do intervalo (inclusa)

-- IS NULL: encontrar campos vazios
select nome, rg                          -- busca nome e rg
from cliente                             -- da tabela cliente
where rg is null;                        -- somente clientes sem rg cadastrado
                                         -- oposto: is not null (tem valor)
                                         -- NUNCA use: rg = null (não funciona!)

-- ORDER BY ASC: ordenar de A até Z
select nome                              -- busca a coluna nome
from cliente                             -- da tabela cliente
order by nome asc;                       -- ordena em ordem crescente A → Z (padrão)

-- ORDER BY DESC: ordenar de Z até A
select nome                              -- busca a coluna nome
from cliente                             -- da tabela cliente
order by nome desc;                      -- ordena em ordem decrescente Z → A

