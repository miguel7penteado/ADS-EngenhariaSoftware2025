/*

| Matrícula    | Nome do Aluno                      |
|----------------|--------------------------------------|
| G003II-9       | ALEX LIMA SILVA                    |
| G0327I-4       | AMANDA SIMONETTO DIAS              |
| G02JDI-5       | ATILA WILLIAM F DE BARROS          |
| R096DH-9       | BRENDA RUOTTI                      |
| R0087I-2       | GUSTAVO SILVA DE ARAUJO            |
| G99JAH-4       | JESSICA SANTOS ANJOS               |
| G8811G-1       | KAIKY ALVES MONTEIRO               |
| G99319-5       | KLEBER WENDEL DE ALMEIDA RIBAS     |
| G90EJA-1       | LEONARDO OLIVEIRA DOS SANTOS       |
| G99ACJ-8       | LUCAS SILVA PINTO DE ASSIS         |
| G99843-0       | MATHEUS ALVES LIMA                 |
| G996FJ-4       | MATHEUS DE OLIVEIRA MONTEIRO       |
| G99JFJ-7       | MATHEUS RIBEIRO DE CAMPOS          |
| G9931A-5       | PEDRO HENRIQUE CAMPOS LEAL         |
| G012IF-3       | PEDRO PAULO VITALINO               |
| R094GC-7       | RENAN DOS SANTOS FERREIRA          |
| G96JFG-6       | RICHARD TRISTAN P GARCIA           |
| G92GHH-8       | RODRIGO SANTOS ARAUJO              |
| G977HG-0       | SIDNEI SERRAO DA SILVA             |
| G003IC-0       | THIAGO DA SILVA SEIXEIRO           |
| G99566-0       | YASMIN HELENA DE OLIVEIRA FERN     |

*/


DO
$criacao_alunos_ads_engenharia_software_2_turma_DS3Q40$
DECLARE
 registro_academico   varchar[] := '{}'    ;
 nome_aluno           varchar[] := '{}'    ;
 turma                char(20)  := 'DS3Q40';
 contador             integer;
 permissoes           char(200) := '{}'    ;
BEGIN
    permissoes             := 'NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE REPLICATION NOBYPASSRLS';
	registro_academico[0]   := 'G003II-9';   -- ALEX LIMA SILVA                
	registro_academico[1]   := 'G0327I-4';   -- AMANDA SIMONETTO DIAS          
	registro_academico[2]   := 'G02JDI-5';   -- ATILA WILLIAM F DE BARROS      
	registro_academico[3]   := 'R096DH-9';   -- BRENDA RUOTTI                  
	registro_academico[4]   := 'R0087I-2';   -- GUSTAVO SILVA DE ARAUJO        
	registro_academico[5]   := 'G99JAH-4';   -- JESSICA SANTOS ANJOS           
	registro_academico[6]   := 'G8811G-1';   -- KAIKY ALVES MONTEIRO           
	registro_academico[7]   := 'G99319-5';   -- KLEBER WENDEL DE ALMEIDA RIBAS 
	registro_academico[8]   := 'G90EJA-1';   -- LEONARDO OLIVEIRA DOS SANTOS   
	registro_academico[9]   := 'G99ACJ-8';   -- LUCAS SILVA PINTO DE ASSIS     
	registro_academico[10]  := 'G99843-0';   -- MATHEUS ALVES LIMA             
	registro_academico[11]  := 'G996FJ-4';   -- MATHEUS DE OLIVEIRA MONTEIRO   
	registro_academico[12]  := 'G99JFJ-7';   -- MATHEUS RIBEIRO DE CAMPOS      
	registro_academico[13]  := 'G9931A-5';   -- PEDRO HENRIQUE CAMPOS LEAL     
	registro_academico[14]  := 'G012IF-3';   -- PEDRO PAULO VITALINO           
	registro_academico[15]  := 'R094GC-7';   -- RENAN DOS SANTOS FERREIRA      
	registro_academico[16]  := 'G96JFG-6';   -- RICHARD TRISTAN P GARCIA       
	registro_academico[17]  := 'G92GHH-8';   -- RODRIGO SANTOS ARAUJO          
	registro_academico[18]  := 'G977HG-0';   -- SIDNEI SERRAO DA SILVA         
	registro_academico[19]  := 'G003IC-0';   -- THIAGO DA SILVA SEIXEIRO       
	registro_academico[20]  := 'G99566-0';   -- YASMIN HELENA DE OLIVEIRA FERN 

	nome_aluno[0]   := 'ALEX LIMA SILVA';
	nome_aluno[1]   := 'AMANDA SIMONETTO DIAS';
	nome_aluno[2]   := 'ATILA WILLIAM F DE BARROS';
	nome_aluno[3]   := 'BRENDA RUOTTI';
	nome_aluno[4]   := 'GUSTAVO SILVA DE ARAUJO';
	nome_aluno[5]   := 'JESSICA SANTOS ANJOS';
	nome_aluno[6]   := 'KAIKY ALVES MONTEIRO';
	nome_aluno[7]   := 'KLEBER WENDEL DE ALMEIDA RIBAS';
	nome_aluno[8]   := 'LEONARDO OLIVEIRA DOS SANTOS';
	nome_aluno[9]   := 'LUCAS SILVA PINTO DE ASSIS';
	nome_aluno[10]  := 'MATHEUS ALVES LIMA';
	nome_aluno[11]  := 'MATHEUS DE OLIVEIRA MONTEIRO';
	nome_aluno[12]  := 'MATHEUS RIBEIRO DE CAMPOS';
	nome_aluno[13]  := 'PEDRO HENRIQUE CAMPOS LEAL';
	nome_aluno[14]  := 'PEDRO PAULO VITALINO';
	nome_aluno[15]  := 'RENAN DOS SANTOS FERREIRA';
	nome_aluno[16]  := 'RICHARD TRISTAN P GARCIA';
	nome_aluno[17]  := 'RODRIGO SANTOS ARAUJO';
	nome_aluno[18]  := 'SIDNEI SERRAO DA SILVA';
	nome_aluno[19]  := 'THIAGO DA SILVA SEIXEIRO';
	nome_aluno[20]  := 'YASMIN HELENA DE OLIVEIRA FERN';



   FOR contador IN 0..20 LOOP      
	  raise notice 'Apagando usuário RA %, nome %', registro_academico[contador], nome_aluno[contador] ;
	  execute 'DROP ROLE IF EXISTS "'|| registro_academico[contador] ||'"            ' ;

      raise notice 'Criando usuário RA %, nome %', registro_academico[contador], nome_aluno[contador] ;
	  execute 'CREATE ROLE "'|| registro_academico[contador] ||'" LOGIN PASSWORD '''|| registro_academico[contador] ||'''  ' || permissoes ;
      execute 'COMMENT ON ROLE "'|| registro_academico[contador] ||'" IS ''Usuario  '|| nome_aluno[contador] ||'  RA '|| registro_academico[contador] ||' turma '|| turma ||' ''';	  
	  
   END LOOP;   


END
$criacao_alunos_ads_engenharia_software_2_turma_DS3Q40$
;


drop table if exists bases;

create table bases
(
	comando_criar text unique,
	comando_apagar text unique
);

insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G003II-9";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G0327I-4";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G02JDI-5";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-R096DH-9";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-R0087I-2";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G99JAH-4";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G8811G-1";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G99319-5";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G90EJA-1";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G99ACJ-8";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G99843-0";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G996FJ-4";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G99JFJ-7";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G9931A-5";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G012IF-3";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-R094GC-7";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G96JFG-6";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G92GHH-8";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G977HG-0";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G003IC-0";');
insert into bases(comando_apagar) values ('DROP   DATABASE IF EXISTS "banco-de-dados-G99566-0";');


insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G003II-9" WITH OWNER = "G003II-9" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G0327I-4" WITH OWNER = "G0327I-4" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G02JDI-5" WITH OWNER = "G02JDI-5" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-R096DH-9" WITH OWNER = "R096DH-9" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-R0087I-2" WITH OWNER = "R0087I-2" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G99JAH-4" WITH OWNER = "G99JAH-4" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G8811G-1" WITH OWNER = "G8811G-1" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G99319-5" WITH OWNER = "G99319-5" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G90EJA-1" WITH OWNER = "G90EJA-1" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G99ACJ-8" WITH OWNER = "G99ACJ-8" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G99843-0" WITH OWNER = "G99843-0" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G996FJ-4" WITH OWNER = "G996FJ-4" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G99JFJ-7" WITH OWNER = "G99JFJ-7" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G9931A-5" WITH OWNER = "G9931A-5" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G012IF-3" WITH OWNER = "G012IF-3" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-R094GC-7" WITH OWNER = "R094GC-7" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G96JFG-6" WITH OWNER = "G96JFG-6" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G92GHH-8" WITH OWNER = "G92GHH-8" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G977HG-0" WITH OWNER = "G977HG-0" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G003IC-0" WITH OWNER = "G003IC-0" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');
insert into bases(comando_criar) values ('CREATE DATABASE "banco-de-dados-G99566-0" WITH OWNER = "G99566-0" ENCODING = ''UTF8'' TABLESPACE = pg_default  CONNECTION LIMIT = -1;');


CREATE DATABASE "banco-de-dados-G003II-9" WITH OWNER = "G003II-9" ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' LOCALE_PROVIDER = 'libc' TABLESPACE = pg_default   CONNECTION LIMIT = -1  IS_TEMPLATE = False;

    
    
    
    
banco-de-dados-G99566-0    Banco de dados de YASMIN HELENA DE OLIVEIRA FERN 
