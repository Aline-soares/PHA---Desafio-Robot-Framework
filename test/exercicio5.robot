*** Settings ***
Documentation    Desafio PHA - Exibir dados pessoais no console
Resource  ./main.robot
Test Setup        Log To Console    Início da execução do teste
Test Teardown     Log To Console    Finalização da execução do teste

*** Variables ***

&{dados_pessoais}    
...    Nome=Maria
...    Sobrenome=Silva    
...    Idade=${30}    
...    Rua=das Flores    
...    Numero=100 A    
...    Bairro=Jardim 
...    Cep=11000-000    
...    Cidade=São Paulo    
...    Estado=SP

*** Test Cases ***
Teste 1   # Exercício Dicionário
    Exibir o nome completo no console
    Exibir a idade no console
    Exibir o endereço completo no console

*** Keywords ***
Exibir o nome completo no console
    Log To Console    \n
    Log To Console    Nome: ${dados_pessoais["Nome"]} ${dados_pessoais["Sobrenome"]}
Exibir a idade no console
    Log To Console    Idade: ${dados_pessoais["Idade"]}

Exibir o endereço completo no console
    Log To Console    Endereço: Rua ${dados_pessoais["Rua"]}, nº ${dados_pessoais["Numero"]}
    Log To Console    Bairro: ${dados_pessoais["Bairro"]}
    Log To Console    Cep: ${dados_pessoais["Cep"]}
    Log To Console    Cidade: ${dados_pessoais["Cidade"]}
    Log To Console    Estado: ${dados_pessoais["Estado"]}

