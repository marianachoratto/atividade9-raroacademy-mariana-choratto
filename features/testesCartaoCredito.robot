*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T1- O usuário deve conseguir interagir com a sessão Cartão de Crédito
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Cartão de Crédito
    Então posso interargir com os recursos da sessão

T2- O usuário deve poder ver informações sobre a fatura do cartão
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Cartão de Crédito
    Então posso ver informações sobre a fatura