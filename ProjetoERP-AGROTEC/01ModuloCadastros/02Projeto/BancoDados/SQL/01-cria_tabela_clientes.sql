DROP TABLE IF EXISTS "public".clientes;
create table "public".clientes
(
	id         bigint        not null,
	nome       varchar(200)  not null,
	endereco   varchar(2000),
	nascimento timestamp,
	imagem     BYTEA
);
ALTER TABLE IF EXISTS "public".clientes ADD CONSTRAINT chave_primaria_clientes PRIMARY KEY (id);
