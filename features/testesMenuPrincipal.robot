*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T1- Quando acessar o aplicativo o usuário deverá ter acesso à informações pessoais
    Dado que acessei o aplicativo Nubank Clone
    Então tenho acesso à várias funcionalidades e informações pesssoais

T22- O usuário deve conseguir clicar no botão Meus Cartões
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão meus cartões
    Então consigo ver que ele está habilitado

T23- O usuário deve conseguir clicar no botão "Conquiste planos futuros"
    Dado que acessei o aplicativo Nubank Clone
    Então consigo clicar no botão "Conquiste planos futuros"

T40- O usuário deve poder fechar o a visualização dos valores da conta clicando no ícone de olho
    Dado que acessei o aplicativo Nubank Clone
    Quando clíco no ícone de visualização
    Então o valor do saldo da conta desaparece
    E o valor da fatura do cartão de crédito também

T41- O usuário deve poder clicar no botão de ajuda
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão de ajuda
    Então ele estará habilitado

T42- O usuário deve poder indicar amigos
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão de indicar amigos
    Então devo ser capaz de indicar um amigo
