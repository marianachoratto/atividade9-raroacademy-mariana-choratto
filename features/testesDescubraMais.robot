*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T38- O usuário deve conseguir clicar no botão Quero Conhecer na sessão Descubra mais
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Quero conhecer
    Então ele deve estar habilitado

T39- O usuário deve conseguir clicar no botão Indicar Amigos na sessão Descubra mais
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Indicar amigos
    Então devo ser capaz de indicar um amigo
