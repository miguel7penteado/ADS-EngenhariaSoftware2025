DROP TABLE IF EXISTS "public".fornecedores;
create table "public".fornecedores
(
	id         bigint        not null,
	nome       varchar(200)  not null,
	endereco   varchar(2000),
	nascimento timestamp,
	imagem     BYTEA
);
ALTER TABLE IF EXISTS "public".fornecedores ADD CONSTRAINT chave_primaria_fornecedores PRIMARY KEY (id);

