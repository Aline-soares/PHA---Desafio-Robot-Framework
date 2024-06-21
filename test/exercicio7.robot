*** Settings ***
Documentation    Exibir cada uma das frutas de uma lista

*** Variables ***

@{frutas}      Morango    Manga    Blueberry    Fruta do Conde    Abacaxi    Uva


*** Test Cases ***
Teste 1
    Exibir cada uma das frutas da lista

*** Keywords ***
Exibir cada uma das frutas da lista
    Log To Console    \n
    Log To Console    Lista de Frutas:
    FOR    ${uma_fruta}    IN    @{frutas}
        Log To Console    ${uma_fruta} 
    END
