*** Settings ***
Documentation    Exercício For in Range - Contar números pares entre 0 e 10
Resource         ./main.robot

*** Variables ***
${contagem}    0

*** Test Cases ***
Teste 1
    Contar Números Pares

*** Keywords ***
Contar Números Pares
    Log To Console    \n
    FOR    ${numero}    IN RANGE    0    11    2
         ${contagem}    Evaluate    ${contagem} + 1
    END
        Log To Console    Quantidade de números pares encontrados: ${contagem}



