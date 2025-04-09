
create table public.clientes
(
	cpf integer not null,
	nome varchar(200),
	idade integer,
	endereco varchar(500),
	nascimento varchar(100)
);

alter table public.clientes add constraint "chave_primaria_clientes" primary key(cpf);
