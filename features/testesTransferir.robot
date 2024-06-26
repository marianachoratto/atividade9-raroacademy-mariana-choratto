*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T37- O Usuario deve conseguir interagir com a seção de transferir
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Então consigo vizualizar a página
    E fazer uma transferência

T38- O usuário não deve conseguir passar letras dentro do input de transferir
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito letras ao invés de números
    Então as letras não aparecerão na tela

T39- Quando o usuário digita letras e números apenas números aparecem na tela de transferência
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito letras e números
    Então apenas os números aparecem

T40- O usuário deve conseguir digitar 14 números na tela de transferência
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito 14 numeros
    Então aparecem 14 números na tela do celular

T41- O usuário não deve conseguir digitar mais de 14 números na tela
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito mais que 14 numeros
    Então à tela volta à 0

T42- O usuário deve poder interagir com o botão transferir na página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão Transferir
    Então consigo vizualizar a página
    E fazer uma transferência