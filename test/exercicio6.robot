*** Settings ***
Documentation   Exercício 05 - Criar uma keyword que receba idade e retorne o ano de nascimento

Library    DateTime

*** Variable ***
${ano_atual}        2024        
${idade}=            35   
  

*** Test Cases ***
Teste 1
    Calcular o ano de nascimento

*** Keywords ***
Calcular o ano de nascimento

    ${ano_nascimento}=    Evaluate    ${ano_atual} - ${idade}  

    Log To Console    \n
    IF    ${ano_nascimento} < 2000
        Log To Console    "Você nasceu no século passado, em ${ano_nascimento}."
    END
   