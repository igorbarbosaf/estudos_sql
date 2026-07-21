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

-- TABELAS DE DOMÍNIO — valores padronizados usados como referência

create table profissao (
    idprofissao integer not null,
    nome varchar(30) not null,
    constraint pk_prf_idprofissao primary key (idprofissao),
    constraint un_prf_nome unique (nome)  -- unique -> impede nome de profissão duplicada
);

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

select * from profissao; -- confere se os dados foram inseridos corretamente


create table nacionalidade (
    idnacionalidade integer not null,
    nome varchar(30) not null,
    constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
    constraint un_ncn_nome unique (nome)
);

-- ! ANTES DE FAZER O DROP: rodar esse select para anotar
--   qual texto estava em cada cliente e qual ID vai corresponder
--   Ex: 'Brasileira' → id 1, 'Italiana' → id 2, etc.
select nacionalidade from cliente;

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

delete from nacionalidade; -- apagou tudo para reinserir corretamente

select * from nacionalidade;


create table complemento (
    idcomplemento integer not null,
    nome varchar(30) not null,
    constraint pk_cpl_idcomplemento primary key (idcomplemento),
    constraint un_cpl_nome unique (nome)
);

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;


create table bairro (
    idbairro integer not null,
    nome varchar(30) not null,
    constraint pk_brr_idbairro primary key (idbairro),
    constraint un_brr_nome unique (nome)
);

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;

-- REESTRUTURANDO A TABELA CLIENTE
-- Substituindo colunas de texto por colunas de ID (foreign key)

-- !! REGRA IMPORTANTE — ANTES DE FAZER O DROP DE QUALQUER COLUNA:
-- 1. Rodar: select * from cliente;
-- 2. Anotar qual texto cada cliente tem nessa coluna
-- 3. Mapear texto → id da tabela de domínio
-- 4. SÓ DEPOIS fazer o drop e os updates com os IDs corretos
-- Exemplo: Carlos tem profissao='Estudante' → idprofissao = 1

select * from cliente; -- PASSO 1: ver os dados antes de qualquer alteração


-- ---- PROFISSÃO ----
alter table cliente rename column profissao to idprofissao; -- renomeia a coluna

alter table cliente alter column idprofissao type integer;
-- ^ deu erro: coluna ainda tem texto, não dá converter direto
-- solução: drop e recriar como integer vazia

select * from cliente;
-- !! Mapeamento e anotado ANTES do drop:
-- Estudante  -> id 1 -> clientes: 1, 9, 10, 12, 15, 17
-- Engenheiro -> id 2 -> cliente:  2
-- Pedreiro -> id 3 -> cliente:  3
-- Jornalista -> id 4 -> clientes: 4, 5
-- Professor -> id 5 -> clientes: 6, 7, 8, 13
-- Null -> clientes: 11, 14

alter table cliente drop idprofissao;          -- remove a coluna com texto
alter table cliente add  idprofissao integer;  -- recria como integer (vazia)

alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);
-- ^ liga cliente.idprofissao com profissao.idprofissao
-- o banco vai bloquear qualquer id que não exista em profissao

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17); -- Estudante
update cliente set idprofissao = 2 where idcliente = 2;                       -- Engenheiro
update cliente set idprofissao = 3 where idcliente = 3;                       -- Pedreiro
update cliente set idprofissao = 4 where idcliente in (4, 5);               -- Jornalista
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);        -- Professor
-- clientes 11 e 14 ficam null (não tinham profissão)


-- ---- NACIONALIDADE ----
select * from cliente; -- confere antes do drop

alter table cliente drop nacionalidade;          -- remove coluna de texto
alter table cliente add  idnacionalidade integer; -- recria como integer

alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);

select * from nacionalidade; -- confirma os IDs antes de fazer os updates

update cliente set idnacionalidade = 1 where idcliente in (1, 2, 3, 4, 6, 10, 11, 14); -- Brasileira
update cliente set idnacionalidade = 2 where idcliente in (5, 7);                      -- Italiana
update cliente set idnacionalidade = 3 where idcliente = 8;                            -- Norte-americana
update cliente set idnacionalidade = 4 where idcliente in (9, 13);                    -- Alemã


-- ---- COMPLEMENTO ----
select * from cliente; -- confere antes do drop

alter table cliente drop complemento;          -- remove coluna de texto
alter table cliente add  idcomplemento integer; -- recria como integer

alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);

select * from complemento; -- confirma os IDs antes de fazer os updates

update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13); -- Casa
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7);     -- Apartamento


-- ---- BAIRRO ----
select * from cliente; -- confere antes do drop

alter table cliente drop bairro;  -- remove coluna de texto
alter table cliente add  idbairro integer; -- recria como integer

alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

select * from bairro; -- confirma os IDs antes de fazer os updates

update cliente set idbairro = 1 where idcliente in (1, 12, 13); -- Cidade Nova
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9); -- Centro
update cliente set idbairro = 3 where idcliente in (4, 5);  -- São Pedro
update cliente set idbairro = 4 where idcliente = 7;  -- Santa Rosa

select * from cliente; -- resultado final com todas as FKs aplicadas

-- TABELA UF — estados do Brasil
-- Tem 3 constraints: pk (id único), unique no nome e unique na sigla

create table uf (
    iduf  integer not null,
    nome  varchar(30) not null,
    sigla char(2) not null,        -- char(2) pois sigla é sempre 2 letras fixas

    constraint pk_ufd_iduf primary key (iduf),   -- id único da linha
    constraint un_ufd_nome unique (nome),         -- não permite estado com nome repetido
    constraint un_ufd_sigla unique (sigla)         -- não permite sigla repetida (ex: dois 'SC')
);

insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina',    'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná',            'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo',         'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais',      'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro',    'RJ');

select * from uf; -- confere os IDs antes de usar no municipio


-- TABELA MUNICIPIO — já nasce com foreign key para UF
-- Isso significa: não dá inserir município com iduf inexistente

create table municipio (
    idmunicipio integer not null,
    nome varchar(30) not null,
    iduf integer not null,   -- obrigatório: todo município pertence a um estado

    constraint pk_mnc_idmunicipio primary key (idmunicipio),
    constraint un_mnc_nome unique (nome),
    constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
    -- ^ FK direto no create table (não precisa de alter table depois)
    --   municipio.iduf aponta para uf.iduf
);

-- Cada município recebe o iduf do estado correspondente:
insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União',     1); -- SC
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas',       1); -- SC
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória',   2); -- PR
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro',2); -- PR
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo',       3); -- SP
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro',  6); -- RJ
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia',      4); -- MG
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre',    5); -- RS
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória',2); -- PR

select * from municipio; -- confere os IDs antes de usar nos updates do cliente

-- REESTRUTURANDO CLIENTE
-- Regra: select * from cliente ANTES de dropar para anotar os dados
-- Aqui municipio já carrega o estado — não precisa mais da coluna uf

select * from cliente; -- OBRIGATÓRIO: anotar municipio e uf de cada cliente antes do drop

alter table cliente drop municipio; -- remove coluna de texto municipio
alter table cliente drop uf;        -- remove coluna de texto uf (o estado agora vem pelo município)

alter table cliente add idmunicipio integer; -- recria como integer vazia

alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);
-- ^ cliente.idmunicipio aponta para municipio.idmunicipio
--   pelo município já se sabe o estado — por isso não precisa mais da coluna uf

-- Mapeamento usado nos updates abaixo:
-- id 1 = Porto União (SC)   -> clientes: 1, 2, 10, 11
-- id 2 = Canoinhas (SC)     -> clientes: 3, 12
-- id 3 = Porto Vitória (PR) -> cliente:  4
-- id 4 = General Carneiro   -> cliente:  5
-- id 5 = São Paulo (SP)     -> clientes: 6, 13
-- id 6 = Rio de Janeiro(RJ) -> cliente:  7
-- id 7 = Uberlândia (MG)    -> cliente:  8
-- id 8 = Porto Alegre (RS)  -> cliente:  9
-- id 9 = União da Vitória   -> clientes: 14, 15

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11); -- Porto União
update cliente set idmunicipio = 2 where idcliente in (3, 12);       -- Canoinhas
update cliente set idmunicipio = 3 where idcliente = 4;              -- Porto Vitória
update cliente set idmunicipio = 4 where idcliente = 5;              -- General Carneiro
update cliente set idmunicipio = 5 where idcliente in (6, 13);      -- São Paulo
update cliente set idmunicipio = 6 where idcliente = 7;              -- Rio de Janeiro
update cliente set idmunicipio = 7 where idcliente = 8;              -- Uberlândia
update cliente set idmunicipio = 8 where idcliente = 9;              -- Porto Alegre
update cliente set idmunicipio = 9 where idcliente in (14, 15);     -- União da Vitória

-- Tabela Pedido
create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor decimal(10,2) not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);


select * from cliente order by cliente;
select * from transportadora;
select * from vendedor;

update cliente set idcliente = 16 where nome = 'Getúlio'; -- corrige idcliente errado de 17 para 16

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (4, '2008-04-05', 1000, 8, 1, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (5, '2008-04-06', 200, 9, 2, 6);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (6, '2008-04-06', 1985, 10, 1, 6);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (7, '2008-04-06', 800, 3, 1, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idvendedor)
values (8, '2008-04-06', 175, 3, 7); -- sem transportadora (nullable)
insert into pedido (idpedido, data_pedido, valor, idcliente, idvendedor)
values (9, '2008-04-07', 1300, 12, 8); -- sem transportadora (nullable)
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (10, '2008-04-10', 200, 6, 1, 8);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (11, '2008-04-15', 300, 15, 2, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (12, '2008-04-20', 500, 15, 2, 5);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (13, '2008-04-20', 350, 9, 1, 7);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (14, '2008-04-23', 300, 2, 1, 5);
insert into pedido (idpedido, data_pedido, valor, idcliente, idvendedor)
values (15, '2008-04-25', 200, 11, 5); -- sem transportadora (nullable)

select * from pedido;

create table pedido_produto (
	idpedido        integer not null,
	idproduto       integer not null,
	quantiade       integer not null,
	valor_unitario  decimal(10,2) not null, -- valor por unidade no momento da venda

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto), -- pk composta: um produto por pedido
	constraint fk_pdp_idpedido  foreign key (idpedido)  references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

-- erro de digitação corrigido com alter table rename column
alter table pedido_produto rename column quantiade to quantidade;

select * from produto;
select * from pedido;

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(2, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(3, 4, 2, 150); -- quantidade 2: dois HDs
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(4, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(4, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(5, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(6, 1, 2, 800); -- quantidade 2: dois microcomputadores
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(6, 7, 1, 35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(6, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(6, 4, 1, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(7, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(8, 7, 5, 35);  -- quantidade 5: cinco gabinetes
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(9, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(9, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(10, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(11, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(11, 6, 1, 100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(12, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(13, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(13, 4, 1, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(14, 6, 3, 100); -- quantidade 3: três memórias RAM
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values(15, 3, 1, 200);

select * from pedido_produto;
---------------------------------------------------------------------------------------------------------------

select * from transportadora; -- confere os dados antes de usar as funções

select count(logradouro) from transportadora;     -- conta só os logradouros preenchidos (ignora null)
select count(idtransportadora) from transportadora; -- conta todas as transportadoras (pk nunca é null)
select count(*) from municipio;                   -- conta todas as linhas da tabela, incluindo nulls

select count(idmunicipio) from municipio where iduf = 2; -- conta municípios de um estado específico

select max(valor) from pedido; -- retorna o maior valor entre todos os pedidos
select min(valor), max(valor) from pedido; -- retorna o menor e o maior valor no mesmo resultado

select sum(valor) from pedido; -- soma o valor de todos os pedidos

select idcliente, sum(valor) -- agrupa os pedidos por cliente
from pedido group by idcliente; -- e soma o valor total de cada um

select idcliente, sum(valor) -- mesmo agrupamento acima
from pedido group by idcliente
having sum(valor) > 500; -- filtra só os clientes cuja soma passou de R$500

-- LEFT OUTER JOIN
-- retorna todos os clientes, mesmo os que não têm profissão cadastrada
-- onde não houver profissão, aparece null no lugar
select
	cln.nome as cliente,   -- apelido "cln" para a tabela cliente
	prf.nome as profissao  -- apelido "prf" para a tabela profissao
from
	cliente as cln         -- tabela principal (todos os registros aparecem)
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao; -- condição do relacionamento entre as tabelas


-- INNER JOIN
-- retorna somente os clientes que têm profissão cadastrada
-- clientes sem profissão são ignorados no resultado
select
	cln.nome as cliente,
	prf.nome as profissao
from
	cliente as cln         -- tabela principal
inner join
	profissao as prf on cln.idprofissao = prf.idprofissao; -- só traz onde existe correspondência nas duas tabelas

select * from pedido;

select
	data_pedido,
	extract(day from data_pedido),    -- extrai só o dia: 1, 2, 5...
	extract(month from data_pedido),  -- extrai só o mês: 4 (abril)
	extract(year from data_pedido)    -- extrai só o ano: 2008
from
	pedido;

select
	nome,
	substring(nome from 1 for 5),  -- pega 5 caracteres a partir da posição 1: 'André' → 'André'
	substring(nome, 2)             -- pega tudo a partir do 2º caractere: 'André' → 'ndré'
from
	cliente;

select
	nome,
	upper(nome)  -- converte o nome para maiúsculo: 'André' → 'ANDRÉ'
from
	cliente;

select
	nome,
	cpf,
	coalesce(cpf, 'Não informado')  -- se cpf for null, mostra 'Não informado' no lugar
from
	cliente;

select
	case sigla                          -- avalia o valor da coluna sigla
		when 'PR' then 'Paraná'         -- se for 'PR' mostra 'Paraná'
		when 'SC' then 'Santa Catarina' -- se for 'SC' mostra 'Santa Catarina'
	else 'Outros'                       -- qualquer outro valor mostra 'Outros'
	end as uf                           -- nomeia a coluna calculada como 'uf'
from
	uf;

-- SUBCONSULTA NO WHERE
-- seleciona pedidos com valor acima da média geral
select
	data_pedido,
	valor
from
	pedido
where
	valor > (select avg(valor) from pedido); -- subconsulta calcula a média dentro do where
	                                          -- o resultado é usado como filtro da consulta principal


-- SUBCONSULTA NO SELECT (correlacionada)
-- para cada pedido, calcula a soma das quantidades dos seus produtos
select
	pdd.data_pedido,
	pdd.valor,
	(select sum(quantidade)           -- subconsulta roda uma vez para cada linha do pedido
	 from pedido_produto as pdp
	 where pdp.idpedido = pdd.idpedido) as total -- liga a subconsulta com o pedido atual
from
	pedido as pdd;

select * from pedido_produto;

-- SUBCONSULTA NO UPDATE
-- reajusta em 5% somente os pedidos acima da média
select * from pedido;
update pedido
	set valor = valor + ((valor * 5) / 100)  -- aplica reajuste de 5% no valor
where
	valor > (select round(avg(valor), 2) from pedido); -- subconsulta calcula a média para filtrar