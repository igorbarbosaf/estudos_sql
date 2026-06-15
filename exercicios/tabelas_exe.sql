-- Tabela forncedor

create table fornecedor (
	idfornecedor integer not null,
	nome         varchar(50) not null,
	constraint pk_frn_idfornecedor primary key (idfornecedor), -- pk: identifica cada fornecedor
	constraint un_frn_nome         unique (nome)               -- impede fornecedores com nome duplicado
);

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');

select * from fornecedor;

-- Tablea vendedor

create table vendedor (
	idvendedor integer not null,
	nome       varchar(50) not null,
	constraint pk_vnd_idvendedor primary key (idvendedor), -- pk: identifica cada vendedor
	constraint un_vnd_nome       unique (nome)             -- impede vendedores com nome duplicado
);

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');

select * from vendedor;

-- Tabela tranportadora

create table transportadora (
	idtransportadora integer not null,
	idmunicipio      integer,            -- nullable: transportadora pode não ter município cadastrado
	nome             varchar(50) not null,
	logradouro       varchar(50),
	numero           varchar(10),
	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint un_trn_nome             unique (nome),
	constraint fk_trn_idmunicipio      foreign key (idmunicipio) references municipio (idmunicipio) -- relacionamento com tabela municipio
);

select * from municipio;

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Ruas das Limas', 01);

insert into transportadora (idtransportadora, idmunicipio, nome)
values (2, 5, 'União Transportes'); -- logradouro e numero opcionais (nullable)

select * from transportadora;

-- Tabela Produto

create table produto (
	idproduto    integer not null,
	idfornecedor integer not null,       -- obrigatório: todo produto precisa ter um fornecedor
	nome         varchar(50) not null,
	valor        decimal(10,2) not null, -- valor monetário: até 10 dígitos, 2 casas decimais
	constraint pk_prd_idproduto    primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor) -- relacionamento com fornecedor
);

select * from fornecedor;

insert into produto (idproduto, idfornecedor, nome, valor) values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) values (3, 2, 'Placa Mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) values (7, 1, 'Gabinete', 35);

select * from produto;

-- Aqui fiz realizei um exercícios para práticar o relacionamentos em tabela ultilizado o foreign key