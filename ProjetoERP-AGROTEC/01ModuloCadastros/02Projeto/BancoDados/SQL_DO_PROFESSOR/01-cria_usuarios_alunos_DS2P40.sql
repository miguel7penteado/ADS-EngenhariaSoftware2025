/*

Turma DS2P40

| Matrícula | Nome do Aluno                  |
| :---------- | :----------------------------- |
| R54885-6    | BRENO SOUZA MASCARENHAS       |
| R19267-9    | CARLOS EDUARDO DA S GALDINO   |
| R150FH-8    | DANILO LUCAS LOURENCO         |
| G740IF-9    | GUSTAVO ALCANTARA NOBRE       |
| G76IBD-7    | HELLEN REGINA B DOS SANTOS    |
| F35EBD-4    | JOAO ALFREDO DA S BRENNER     |
| R11835-5    | LUCAS ROSSE                   |
| G839GC-6    | PABLO HENRIQUE C ARAUJO       |
| G61ICI-3    | THIAGO VERNIER LOUREIRO MAIA  |
*/

DO
$criacao_alunos_ads_engenharia_software_2_turma_DS2P40$
DECLARE
 registro_academico   varchar[] := '{}'    ;
 nome_aluno           varchar[] := '{}'    ;
 turma                char(20)  := 'DS2P40';
 contador             integer;
 permissoes           char(200) := '{}'    ;
BEGIN
    permissoes             := 'NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE REPLICATION NOBYPASSRLS';
	registro_academico[0]  := 'R54885-6';    -- BRENO SOUZA MASCARENHAS      
	registro_academico[1]  := 'R19267-9';    -- CARLOS EDUARDO DA S GALDINO  
	registro_academico[2]  := 'R150FH-8';    -- DANILO LUCAS LOURENCO        
	registro_academico[3]  := 'G740IF-9';    -- GUSTAVO ALCANTARA NOBRE      
	registro_academico[4]  := 'G76IBD-7';    -- HELLEN REGINA B DOS SANTOS   
	registro_academico[5]  := 'F35EBD-4';    -- JOAO ALFREDO DA S BRENNER    
	registro_academico[6]  := 'R11835-5';    -- LUCAS ROSSE                  
	registro_academico[7]  := 'G839GC-6';    -- PABLO HENRIQUE C ARAUJO      
	registro_academico[8]  := 'G61ICI-3';    -- THIAGO VERNIER LOUREIRO MAIA 

	nome_aluno[0]  := 'BRENO SOUZA MASCARENHAS';
	nome_aluno[1]  := 'CARLOS EDUARDO DA S GALDINO';
	nome_aluno[2]  := 'DANILO LUCAS LOURENCO';
	nome_aluno[3]  := 'GUSTAVO ALCANTARA NOBRE';
	nome_aluno[4]  := 'HELLEN REGINA B DOS SANTOS';
	nome_aluno[5]  := 'JOAO ALFREDO DA S BRENNER';
	nome_aluno[6]  := 'LUCAS ROSSE';
	nome_aluno[7]  := 'PABLO HENRIQUE C ARAUJO';
	nome_aluno[8]  := 'THIAGO VERNIER LOUREIRO MAIA';



   FOR contador IN 0..8 LOOP      
	  execute 'DROP ROLE IF EXISTS "'|| registro_academico[contador] ||'"            ' ;
	  execute 'CREATE ROLE "'|| registro_academico[contador] ||'" LOGIN PASSWORD '''|| registro_academico[contador] ||'''  ' || permissoes ;
      execute 'COMMENT ON ROLE "'|| registro_academico[contador] ||'" IS ''Usuario  '|| nome_aluno[contador] ||'  RA '|| registro_academico[contador] ||' turma '|| turma ||' ''';
      raise notice 'Criando usuário %', registro_academico[contador] ;

   END LOOP;   


END
$criacao_alunos_ads_engenharia_software_2_turma_DS2P40$
;












banco-de-dados-G61ICI-3










| G61ICI-3    | THIAGO VERNIER LOUREIRO MAIA  |