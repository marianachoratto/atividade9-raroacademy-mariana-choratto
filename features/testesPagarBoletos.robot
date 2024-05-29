*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T28- O Usuario deve conseguir interagir com a seção de Pagar
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Pagar
    Então consigo visualizar suas funcionalidades

T29-O usuário deve poder interagir com o botão de Pagar da página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão pagar
    Então consigo visualizar suas funcionalidades