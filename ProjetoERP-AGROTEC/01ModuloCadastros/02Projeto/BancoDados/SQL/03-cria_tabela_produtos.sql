DROP TABLE IF EXISTS "public".produtos;
create table "public".produtos
(
	id         bigint        not null,
	nome       varchar(200)  not null,
	tipo       varchar(200),
	marca      varchar(200),
	unidade    varchar(20),
	peso       varchar(20),
	imagem     BYTEA,
	fornecedor bigint
);
ALTER TABLE IF EXISTS "public".produtos ADD CONSTRAINT chave_primaria_produtos PRIMARY KEY (id);
