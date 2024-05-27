*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T1- Quando acessar o aplicativo o usuário deverá ter acesso à informações pessoais
    Dado que acessei o aplicativo Nubank Clone
    Então tenho acesso à algumas informações pesssoais

T2- Usuário deve conseguir interagir a seção de pix
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão pix 
    Então tenho acesso às suas funcionalidades

T3- O Usuario deve conseguir interagir com a seção de pagar boletos
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão pagar
    Então consigo visualizar suas funcionalidades

T4- O Usuario deve conseguir interagir com a seção de transferir
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Então consigo visualizar suas funcionalidades
    