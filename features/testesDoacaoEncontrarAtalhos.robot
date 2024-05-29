*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T14- O usuário deve conseguir clicar no botão de Doação
    Dado que acessei o aplicativo Nubank Clone
    Quando mexo no carrossel de botões
    Então consigo clicar no botão de Doação

T15- O usuário deve conseguir clicar no botão de Encontrar Atalhos
    Dado que acessei o aplicativo Nubank Clone
    Quando mexo no carrossel de botões
    Então consigo clicar no botão Encontrar Atalhos