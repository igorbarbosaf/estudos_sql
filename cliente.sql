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

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (1 , 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'Casa', 'Cidade Nova', 'POrto União', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (2 , 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'Poro União', 'SC');

insert into cliente (idcliente, nome ,cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (3 , 'Carlos', '87732323227', '55463', '1967-09-10', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart', 'Cto.', 'Canoinhas', 'SC');