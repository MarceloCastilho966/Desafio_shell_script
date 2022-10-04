# desafio_shell_script

## Introdução
-----------------------------------------------

## Desafio
-----------------------------------------------

1. Baixe base de dados do enem 2020;
2. Gere um arquivo de saída mostrando: 
A) O total de provas realizadas ou que deveriam ter sido realizadas em uma cidade  
B) A Média da nota Línguaguem e suas tecnologias.

-----------------------------------------------

## Resposta:

### Foi criado um script que:

1. faz o Download do arquivo no site: 'https://download.inep.gov.br/microdados/microdados_enem_2020.zip' com o comando 'WGET'

2. Seleciona o arquivo 'MICRODADOS_ENEM_2020.csv' e joga para fora da pasta ZIP

3. Exclui todos os arquivos que não serão necessários para o Desafio

4. Com a ajuda do AWK trato os dados para que consiga extrair as respotas do exercicio 2

5. Após a criação do script, entro nas propriedades do arquivo, e mudo sua permissão para que seja utilizado como programa
