*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T16- O usuário deve conseguir interagir com o botão Cobrar
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Então posso digitar o valor que eu espero receber

T17- Quando o usuário digita letras e números apenas números aparecem na tela de cobrança
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Quando digito letras ao invés dos números
    Então as letras não aparecerão na tela

T18- O usuário pode digitar no máximo 14 números no input de cobrança
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Quando digito 14 números
    Então aparecem 14 números na tela de cobrança

T19- O usuário não deve conseguir digitar 15 numeros ou mais no input de cobrança
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Quando digito 15 números
    Então o input fica em branco

T31- O usuário deve poder interagir com o botão Cobrar da página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão Cobrar
    Então posso digitar o valor que eu espero receber