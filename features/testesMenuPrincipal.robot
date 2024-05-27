*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T1- Quando acessar o aplicativo o usuário deverá ter acesso à informações pessoais
    Dado que acessei o aplicativo Nubank Clone
    Então tenho acesso à várias funcionalidades e informações pesssoais

T2- Usuário deve conseguir interagir a seção de pix
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Pix 
    Então tenho acesso às suas funcionalidades

T3- O Usuario deve conseguir interagir com a seção de pagar boletos
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Pagar
    Então consigo visualizar suas funcionalidades

T4- O Usuario deve conseguir interagir com a seção de transferir
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Então consigo vizualizar a página
    E fazer uma transferência

T5- O usuário não deve conseguir passar letras dentro do input de transferir
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito letras ao invés dos números
    Então as letras não aparecerão na tela

T6- Quando o usuário digita letras e números apenas números aparecem na tela de transferência
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito letras e números
    Então apenas os números aparecem

T7- O usuário deve conseguir digitar 14 números na tela de transferência
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito 14 numeros
    Então aparecem 14 números na tela do celular

T8- O usuário não deve conseguir digitar mais de 14 números na tela
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão transferir
    Quando digito mais que 14 numeros
    Então à tela volta à 0

T09- O usuário deve conseguir interagir com a seção de depositar
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão depositar
    Então posso usar os recursos da seção de depósito

T10- O usuário deve conseguir interagir com a sessão de Empréstimo
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Empréstimos
    Então posso usar os recursos da seção de empréstimos

T11- O usuário deve conseguir interagir com a sessão de recarga de celular
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Recarga de celular
    Então posso digitar o numero do meu celular para recarga