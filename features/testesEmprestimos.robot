*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T10- O usuário deve conseguir interagir com o botão de Empréstimos
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Empréstimos
    Então posso usar os recursos da seção de empréstimos

T30- O usuário deve poder interagir com o botão Empréstimos na página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão Empréstimos
    Então posso usar os recursos da seção de empréstimos

T34-O usuário deve conseguir interagir com a sessão Empréstimo na página inicial
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão empréstimo
    Então posso usar os recursos da seção de empréstimos

T24- O usuário deve conseguir apertar o botão "Você tem 10 mil para empréstimos"
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão "Você tem 10 mil para empréstimos"
    Então posso usar os recursos da seção de empréstimos