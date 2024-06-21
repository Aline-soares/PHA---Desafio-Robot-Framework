*** Settings ***
Documentation    Alterar o valor da senha e exibir o dicionário criado no setup com a senha alterada.
Resource         ../keyword/keyword.robot

Test Setup       Setup Credenciais
Test Teardown    Teardown Credenciais

*** Variables ***
&{Credenciais}    Usuário=Aluno    Senha=QA1234

*** Test Cases ***
Alterar a Senha
    Set To Dictionary    ${Credenciais}    Senha=XYZ987
    Log To Console    \n
    Log To Console    Credenciais após alteração: ${Credenciais}

*** Keywords ***
Setup Credenciais
    Log To Console    Credenciais antes da alteração: ${Credenciais}

Teardown Credenciais
    Log To Console    Credenciais antes de restaurar: ${Credenciais}
