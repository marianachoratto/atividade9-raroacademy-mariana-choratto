*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T20- O usuário deve conseguir interagir com a sessão Investimentos
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Investimentos
    Então tenho acesso às funcionalidades da seção de investimentos

T21- O usuário deve conseguir interagir com a sessão Investimentos clicando no botão Conhecer
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Investimentos usando o botão Conhecer
    Então tenho acesso às funcionalidades da seção de investimentos
