*** Settings ***
Documentation   Criar um comando de execução robot para executar todos os exercícios juntos:
Library         OperatingSystem

Suite Setup     Setup da Suíte de Teste
Suite Teardown  Teardown da Suíte de Teste

*** Test Cases ***
Executar Todos os Testes
    [Documentation]    Executa todos os exercícios de teste juntos
    Run Keywords
        Teste Exercicio5
        Teste Exercicio6
        Teste Exercicio7
        Teste Exercicio8
        Teste Exercicio9

*** Keywords ***
Setup da Suíte de Teste
    [Documentation]    Configurações iniciais da suíte de testes
    Log    Inicializando a suíte de testes...

Teardown da Suíte de Teste
    [Documentation]    Finalizações da suíte de testes
    Log    Finalizando a suíte de testes...

Teste Exercicio5
    [Documentation]    Teste do Exercício 5
    OperatingSystem.Get File     C:\\Workspace\\PHA\\Test\\Exercicio5.robot

Teste Exercicio6
    [Documentation]    Teste do Exercício 6
    OperatingSystem.Get File     C:\\Workspace\\PHA\\Test\\Exercicio6.robot

Teste Exercicio7
    [Documentation]    Teste do Exercício 7
    OperatingSystem.Get File     C:\\Workspace\\PHA\\Test\\Exercicio7.robot

Teste Exercicio8
    [Documentation]    Teste do Exercício 8
    OperatingSystem.Get File     C:\\Workspace\\PHA\\Test\\Exercicio8.robot

Teste Exercicio9
    [Documentation]    Teste do Exercício 9
    OperatingSystem.Get File     C:\\Workspace\\PHA\\Test\\Exercicio9.robot
