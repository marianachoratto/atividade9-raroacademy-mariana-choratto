*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T12- O usuário deve conseguir clicar no botão Quero Conhecer na sessão Descubra mais
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Quero conhecer
    Então ele deverá estar habilitado

T13- O usuário deve conseguir clicar no botão Indicar Amigos na sessão Descubra mais
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Indicar amigos
    Então devo ser capaz de indicar um amigo
