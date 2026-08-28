--1. Crie um banco de dados chamado BIBLIOTECA.

2. Crie uma tabela chamada EDITORA:

create table editora (
	ideditora serial primary key,
	nome varchar(50) not null
);

--3. Insira os dados abaixo na tabela EDITORA.
--Bookman 
--Edgard Blusher 
--Nova Terra 
--Brasport 

insert into editora (nome) values ('Bookman');
insert into editora (nome) values ('Edgard Blusher');
insert into editora (nome) values ('Nova Terra');
insert into editora (nome) values ('Brasport');

select * from editora;

4. Crie uma tabela chamada CATEGORIA: 

create table categoria (
	idcategoria serial primary key,
	nome varchar(50) 
);

-- Alterando a coluna nome para not null (Esqueci rsrs)
alter table categoria alter column nome set not null;

--5. Insira os dados abaixo na tabela CATEGORIA.  
--Banco de Dados 
--HTML 
--Java 
--PHP 

insert into categoria (nome) values ('Banco de Dados');
insert into categoria (nome) values ('HTML');
insert into categoria (nome) values ('Java');
insert into categoria (nome) values ('PHP');

select * from categoria;

Crie uma tabela chamada AUTOR: 

create table autor (
	idautor serial primary key,
	nome varchar(50) not null
);

--7. Insira os dados abaixo na tabela AUTOR.
--Waldemar Setzer 
--Flávio Soares 
--John Watson 
--Rui Rossi dos Santos 
--Antonio Pereira de Resende 
--Claudiney Calixto Lima 
--Evandro Carlos Teruel 
--Ian Graham 
--Fabrício Xavier 
--Pablo Dalloglio

insert into autor (nome) values ('Waldemar Setzer');
insert into autor (nome) values ('Flávio Soares');
insert into autor (nome) values ('John Watson');
insert into autor (nome) values ('Rui Rossi dos Santos');
insert into autor (nome) values ('Antonio Pereira de Resende');
insert into autor (nome) values ('Claudiney Calixto Lima');
insert into autor (nome) values ('Evandro Carlos Teruel');
insert into autor (nome) values ('Ian Graham');
insert into autor (nome) values ('Fabrício Xavier');
insert into autor (nome) values ('WPablo Dalloglio');

select * from autor;

--Fazendo um update para modificar o nome que coloquei errando.
update autor
set nome = 'Pablo Dalloglio'
where idautor = 10

8. Crie uma tabela chamada LIVRO:

create table livro (
	idlivro serial primary key,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(50) not null,

	constraint fk_editora foreign key (ideditora) references editora(ideditora),
	constraint fk_categoria foreign key (idcategoria) references categoria(idcategoria)
);

--Usei o type para aumentar o varchar para 100, por conta dos values que eram maiores que 50
alter table livro alter column nome type varchar(100);

9. Insira os dados abaixo na tabela LIVRO. 

select * from editora;
select * from categoria;

insert into livro (ideditora, idcategoria, nome) values (2, 1, 'Banco de Dados - 1 Edição');
insert into livro (ideditora, idcategoria, nome) values (1, 1, 'Oracle, DataBase 11G Administração');
insert into livro (ideditora, idcategoria, nome) values (3, 3, 'Programação de Computadores em Java');
insert into livro (ideditora, idcategoria, nome) values (4, 3, 'Programação Orientada a Aspectos em Java');
insert into livro (ideditora, idcategoria, nome) values (4, 2, 'HTML5 - Guia Prático');
insert into livro (ideditora, idcategoria, nome) values (3, 2, 'XHTML: Guia de Referência para Desevolvimento na Web');
insert into livro (ideditora, idcategoria, nome) values (1, 4, 'BPHP para Desenvolvimento Profissional');
insert into livro (ideditora, idcategoria, nome) values (2, 4, 'PHP com Programação Orientada a Objetos');

select * from livro;

--Erro de digitação, por isso estou fazendo um update para
--corrigir o erro
update livro
set nome = 'PHP para Desenvolvimento Profissional'
where idlivro = 11;

--10. Crie uma tabela chamada LIVRO_AUTOR:

create table livro_autor (
	idlivro integer not null,
	idautor integer not null,

	constraint fk_livro foreign key (idlivro) references livro(idlivro),
	constraint fk_autor foreign key (idautor) references autor(idautor)
);

--11. Insira os dados abaixo na tabela LIVRO_AUTOR.
select * from livro;
select * from autor;

insert into livro_autor (idlivro, idautor) values (1, 1);
insert into livro_autor (idlivro, idautor) values (1, 2);
insert into livro_autor (idlivro, idautor) values (6, 3);
insert into livro_autor (idlivro, idautor) values (7, 4);
insert into livro_autor (idlivro, idautor) values (8, 5);
insert into livro_autor (idlivro, idautor) values (8, 6);
insert into livro_autor (idlivro, idautor) values (9, 7);
insert into livro_autor (idlivro, idautor) values (10, 8);
insert into livro_autor (idlivro, idautor) values (11, 9);
insert into livro_autor (idlivro, idautor) values (12, 10);

select * from livro_autor;

--12. Crie uma tabela chamada ALUNO:

create table aluno (
	idaluno serial primary key,
	nome varchar(50) not null
);

--13. Insira os dados abaixo na tabela ALUNO. 
--Mario 
--João 
--Paulo 
--Pedro 
--Maria 

insert into aluno (nome) values ('Mario');
insert into aluno (nome) values ('João');
insert into aluno (nome) values ('Paulo');
insert into aluno (nome) values ('Pedro');
insert into aluno (nome) values ('Maria');

select * from aluno;

--14. Crie uma tabela chamada EMPRESTIMO:

create table emprestimo (
	idemprestimo serial primary key,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor decimal(10,2) not null,
	devolvido char(1) not null check(devolvido in ('S', 'N')),

	constraint fk_aluno foreign key (idaluno) references aluno(idaluno)
);

--15. Insira os dados abaixo na tabela EMPRESTIMO. 

select * from aluno;

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (1, '2012-05-02', '2012-05-12', 10, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (1, '2012-04-23', '2012-05-03', 5, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (2, '2012-05-10', '2012-05-20', 12, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (3, '2012-05-10', '2012-05-20', 8, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-05', '2012-05-15', 15, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-07', '2012-05-17', 20, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-08', '2012-05-18', 5, 'S');

select * from emprestimo;

16. Crie uma tabela chamada EMPRESTIMO_LIVRO:

create table emprestimo_livro (
	idemprestimo integer not null,
	idlivro integer not null,

	constraint fk_emprestimo foreign key (idemprestimo) references emprestimo(idemprestimo),
	constraint fk_livro foreign key (idlivro) references livro(idlivro)
);

--17. Insira os dados abaixo na tabela EMPRESTIMO_LIVRO.

select * from emprestimo;
select * from livro;
select * from aluno;

insert into emprestimo_livro (idemprestimo, idlivro) values (1, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (1, 8);
insert into emprestimo_livro (idemprestimo, idlivro) values (1, 7);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 11);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 9);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 8);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 10);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 12);

select * from emprestimo_livro;

--18. Crie os seguintes índices: 
--Emprestimo - Emprestimo 
--Emprestimo - Devolução

create index idx_emp_data_emprestimo on emprestimo (data_emprestimo);
create index idx_emp_data_devolucao on emprestimo (data_devolucao);

select * from emprestimo where data_emprestimo = '2012-05-10';

-- CONSULTAS SIMPLES 
--19. O nome dos autores em ordem alfabética.
select nome from autor order by nome asc;

--20. O nome dos alunos que começam com a letra P.
select nome from aluno where nome like 'P%';

--21. O nome dos livros da categoria Banco de Dados ou Java.
select
	lvr.nome as livros
from
	livro lvr
inner join
	categoria ctg on lvr.idcategoria = ctg.idcategoria
where
	ctg.nome = 'Banco de Dados' or ctg.nome = 'Java';
	
--22. O nome dos livros da editora Bookman.
select * from editora;
select * from livro;

select
	lvr.nome
from
	livro lvr
inner join
	editora edt on edt.ideditora = lvr.ideditora
where
	edt.nome = 'Bookman';

--23. Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
select * from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';

--24. Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
select * from emprestimo where data_emprestimo not between '2012-05-05' and '2012-05-10';

--25. Os empréstimos que os livros já foram devolvidos.
select * from emprestimo where devolvido = 'S';

-- CONSULTAS COM AGRUPAMENTO SIMPLES
--26. A quantidade de livros.
select count(*) from livro;

--27. O somatório do valor dos empréstimos.
select sum(valor) from emprestimo;

--28. A média do valor dos empréstimos.
select round(avg(valor), 2) from emprestimo;

--29. O maior valor dos empréstimos.
select max(valor) from emprestimo;

--30. O menor valor dos empréstimos.
select min(valor) from emprestimo;

--31. O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
select sum(valor) from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';

--32. A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
select count(*) from emprestimo where data_emprestimo between '2012-05-01' and '2012-05-05';

-- CONSULTAS COM JOIN 
--33. O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
create view livro_categoria_editora as
select
	lvr.nome as livro,
	ctg.nome as categoria,
	edt.nome as editora
from
	livro lvr
left outer join
	categoria ctg on lvr.idcategoria = ctg.idcategoria
left outer join
	editora edt on lvr.ideditora = edt.ideditora;

select * from livro_categoria_editora;

--34. O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
select * from livro_autor;
create view vw_livro_autor as
select
	lvr.nome as livro,
	aut.nome as autor
from
	livro_autor lvraut
left outer join
	livro lvr on lvraut.idlivro = lvr.idlivro
left outer join
	autor aut on lvraut.idautor = aut.idautor

select * from vw_livro_autor;

--35. O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
select
	lvr.nome as livro
from
	livro_autor lvat
inner join
	livro lvr on lvat.idlivro = lvr.idlivro
inner join
	autor aut on lvat.idautor = aut.idautor
where
	aut.nome = 'Ian Graham';

--36. O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
select
	alu.nome as aluno,
	emp.data_emprestimo,
	emp.data_devolucao
from
	emprestimo emp
inner join
	aluno alu on emp.idaluno = alu.idaluno;

--37. O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).
select
	lvr.nome
from
	emprestimo_livro emlv
inner join
	livro lvr on emlv.idlivro = lvr.idlivro;

