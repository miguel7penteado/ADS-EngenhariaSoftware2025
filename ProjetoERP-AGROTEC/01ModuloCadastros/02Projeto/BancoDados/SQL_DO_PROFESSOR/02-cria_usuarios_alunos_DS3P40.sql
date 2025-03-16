/*

Turma DS3P40

| Matrícula   | Nome do Aluno                     |
| :---------- | :-------------------------------- |
| T736DG-3    | ANDRE LUIS RIGUEIRA ZANA          |
| R06534-0    | BIANCA CAVALCANTE DOS SANTOS      |
| G964AA-5    | CIBELE MARIA BARBOSA              |
| R1007A-0    | DANIEL GOES CARVALHO SILVA        |
| G98399-8    | DAVI PEREIRA DO VALE              |
| F3567F-6    | EDUARDO MONTINO LACERDA           |
| F35973-5    | FELIPE DE CAMPOS MOREIRA ALVES    |
| R0622A-5    | FERNANDA VICTORIA D LO VACCO      |
| R091EC-3    | GABRIEL ALVES BATISTA             |
| G989DC-6    | GABRIEL PINHEIRO SOUZA            |
| R08565-1    | GIOVANNY GOMES BRANDAO            |
| R055AF-2    | GUILHERME NASCIMENTO R BARBOSA    |
| N088EG-0    | GUILHERME R DE OLIVEIRA           |
| R06229-5    | GUSTAVO SILVA DOS SANTOS          |
| R07095-6    | HENRIQUE MOREIRA BOTELLA          |
| R0823C-0    | HENRIQUE P DOS S FRANCISCO        |
| G98BGB-2    | IGOR XAVIER DE MATTOS             |
| G90JDE-2    | JOAO RICARDO DA SILVA JUNIOR      |
| F3590G-2    | JOAO RICK GALDINO PEREIRA         |
| R0567D-6    | JOAO VICTOR CARVALHO DE SOUZA     |
| G9756E-6    | JOAO VICTOR DA SILVA MACHADO      |
| G0249I-6    | JULIANA BORGES MOURA              |
| F35937-9    | MATHEUS SERVULO CAJE              |
| R10099-5    | MELISSA SCARPINATTI B DA SILVA    |
| G8832G-1    | RENAN PRAZERES CLEMENTINO         |
| F35CDF-2    | SERGIO ALEXANDRE A DO AMARAL      |

*/

DO
$criacao_alunos_ads_engenharia_software_2_turma_DS3P40$
DECLARE
 registro_academico   varchar[] := '{}'    ;
 nome_aluno           varchar[] := '{}'    ;
 turma                char(20)  := 'DS3P40';
 contador             integer;
 permissoes           char(200) := '{}'    ;
BEGIN
    permissoes             := 'NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE REPLICATION NOBYPASSRLS';
	registro_academico[0]   := 'T736DG-3';   -- ANDRE LUIS RIGUEIRA ZANA      
	registro_academico[1]   := 'R06534-0';   -- BIANCA CAVALCANTE DOS SANTOS  
	registro_academico[2]   := 'G964AA-5';   -- CIBELE MARIA BARBOSA          
	registro_academico[3]   := 'R1007A-0';   -- DANIEL GOES CARVALHO SILVA    
	registro_academico[4]   := 'G98399-8';   -- DAVI PEREIRA DO VALE          
	registro_academico[5]   := 'F3567F-6';   -- EDUARDO MONTINO LACERDA       
	registro_academico[6]   := 'F35973-5';   -- FELIPE DE CAMPOS MOREIRA ALVES
	registro_academico[7]   := 'R0622A-5';   -- FERNANDA VICTORIA D LO VACCO  
	registro_academico[8]   := 'R091EC-3';   -- GABRIEL ALVES BATISTA         
	registro_academico[9]   := 'G989DC-6';   -- GABRIEL PINHEIRO SOUZA        
	registro_academico[10]  := 'R08565-1';   -- GIOVANNY GOMES BRANDAO        
	registro_academico[11]  := 'R055AF-2';   -- GUILHERME NASCIMENTO R BARBOSA
	registro_academico[12]  := 'N088EG-0';   -- GUILHERME R DE OLIVEIRA       
	registro_academico[13]  := 'R06229-5';   -- GUSTAVO SILVA DOS SANTOS      
	registro_academico[14]  := 'R07095-6';   -- HENRIQUE MOREIRA BOTELLA      
	registro_academico[15]  := 'R0823C-0';   -- HENRIQUE P DOS S FRANCISCO    
	registro_academico[16]  := 'G98BGB-2';   -- IGOR XAVIER DE MATTOS         
	registro_academico[17]  := 'G90JDE-2';   -- JOAO RICARDO DA SILVA JUNIOR  
	registro_academico[18]  := 'F3590G-2';   -- JOAO RICK GALDINO PEREIRA     
	registro_academico[19]  := 'R0567D-6';   -- JOAO VICTOR CARVALHO DE SOUZA 
	registro_academico[20]  := 'G9756E-6';   -- JOAO VICTOR DA SILVA MACHADO  
	registro_academico[21]  := 'G0249I-6';   -- JULIANA BORGES MOURA          
	registro_academico[22]  := 'F35937-9';   -- MATHEUS SERVULO CAJE          
	registro_academico[23]  := 'R10099-5';   -- MELISSA SCARPINATTI B DA SILVA
	registro_academico[24]  := 'G8832G-1';   -- RENAN PRAZERES CLEMENTINO     
	registro_academico[25]  := 'F35CDF-2';   -- SERGIO ALEXANDRE A DO AMARAL  

	nome_aluno[0]   := 'ANDRE LUIS RIGUEIRA ZANA';
	nome_aluno[1]   := 'BIANCA CAVALCANTE DOS SANTOS';
	nome_aluno[2]   := 'CIBELE MARIA BARBOSA';
	nome_aluno[3]   := 'DANIEL GOES CARVALHO SILVA';
	nome_aluno[4]   := 'DAVI PEREIRA DO VALE';
	nome_aluno[5]   := 'EDUARDO MONTINO LACERDA';
	nome_aluno[6]   := 'FELIPE DE CAMPOS MOREIRA ALVES';
	nome_aluno[7]   := 'FERNANDA VICTORIA D LO VACCO';
	nome_aluno[8]   := 'GABRIEL ALVES BATISTA';
	nome_aluno[9]   := 'GABRIEL PINHEIRO SOUZA';
	nome_aluno[10]  := 'GIOVANNY GOMES BRANDAO';
	nome_aluno[11]  := 'GUILHERME NASCIMENTO R BARBOSA';
	nome_aluno[12]  := 'GUILHERME R DE OLIVEIRA';
	nome_aluno[13]  := 'GUSTAVO SILVA DOS SANTOS';
	nome_aluno[14]  := 'HENRIQUE MOREIRA BOTELLA';
	nome_aluno[15]  := 'HENRIQUE P DOS S FRANCISCO';
	nome_aluno[16]  := 'IGOR XAVIER DE MATTOS';
	nome_aluno[17]  := 'JOAO RICARDO DA SILVA JUNIOR';
	nome_aluno[18]  := 'JOAO RICK GALDINO PEREIRA';
	nome_aluno[19]  := 'JOAO VICTOR CARVALHO DE SOUZA';
	nome_aluno[20]  := 'JOAO VICTOR DA SILVA MACHADO';
	nome_aluno[21]  := 'JULIANA BORGES MOURA';
	nome_aluno[22]  := 'MATHEUS SERVULO CAJE';
	nome_aluno[23]  := 'MELISSA SCARPINATTI B DA SILVA';
	nome_aluno[24]  := 'RENAN PRAZERES CLEMENTINO';
	nome_aluno[25]  := 'SERGIO ALEXANDRE A DO AMARAL';



   FOR contador IN 0..25 LOOP      
	  execute 'DROP ROLE IF EXISTS "'|| registro_academico[contador] ||'"            ' ;
	  raise notice 'Apagando usuário RA %, nome %', registro_academico[contador], nome_aluno[contador] ;
	  execute 'CREATE ROLE "'|| registro_academico[contador] ||'" LOGIN PASSWORD '''|| registro_academico[contador] ||'''  ' || permissoes ;
      execute 'COMMENT ON ROLE "'|| registro_academico[contador] ||'" IS ''Usuario  '|| nome_aluno[contador] ||'  RA '|| registro_academico[contador] ||' turma '|| turma ||' ''';
      raise notice 'Criando usuário RA %, nome %', registro_academico[contador], nome_aluno[contador] ;

   END LOOP;   


END
$criacao_alunos_ads_engenharia_software_2_turma_DS3P40$
;



