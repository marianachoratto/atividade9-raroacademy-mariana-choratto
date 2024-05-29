*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T8- O usuário deve conseguir interagir com a sessão Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    Então tenho acesso às informações da minha conta

T9- O usuário deve ter acesso ao histórico de pagamentos da conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    Então tenho acesso ao histórico de pagamento