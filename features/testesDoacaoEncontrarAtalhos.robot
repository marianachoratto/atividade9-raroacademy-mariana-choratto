*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T20- O usuário deve conseguir clicar no botão de Doação
    Dado que acessei o aplicativo Nubank Clone
    Quando faço um swipe do carrossel de botões
    Então consigo clicar no botão

T21- O usuário deve conseguir clicar no botão de Encontrar Atalhos
    Dado que acessei o aplicativo Nubank Clone
    Quando faço um swipe do carrossel de botões
    Então consigo clicar no botão criar atalhos