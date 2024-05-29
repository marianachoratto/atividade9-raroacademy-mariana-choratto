*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T09- O usuário deve conseguir interagir com a seção de depositar
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Depositar
    Então posso usar os recursos da seção de depósito

T27- O usuário deve poder interagir com o botão de depositar da conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E depois no botão Depositar
    Então posso usar os recursos da seção de depósito