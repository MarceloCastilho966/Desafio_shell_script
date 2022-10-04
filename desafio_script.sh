#!/bin/bash

## Download dos arquivos:
echo 'Baixando Arquivos...'
wget https://download.inep.gov.br/microdados/microdados_enem_2020.zip --no-check-certificate

## Selecionando apenas o arquivo necessário
echo 'Selecionando arquivos na pasta ZIP...'

unzip microdados_enem_2020.zip DADOS/MICRODADOS_ENEM_2020.csv

mv /home/marcelo/BULK/desafio_shell_script/DADOS/MICRODADOS_ENEM_2020.csv /home/marcelo/BULK/desafio_shell_script/

## Removendo Pasta Desnecessária
echo 'Removendo pasta Desnecessária...'
rmdir DADOS
rm -r microdados_enem_2020.zip

## Tratando Dados
echo 'Buscando total de provas realizadas em Sorocaba...'
awk -F";" '($14== "Sorocaba") {count++} END {print "Total de provas: "count}' MICRODADOS_ENEM_2020.csv > output.txt

echo 'Buscando a média das provas realizadas...'
awk -F";" '($14== "Sorocaba" && $33 !="") {sum+=$33 ;count++} END {if (count > 0) print "Média: "sum / count} ' MICRODADOS_ENEM_2020.csv >> output.txt

echo 'Finalizado.'
