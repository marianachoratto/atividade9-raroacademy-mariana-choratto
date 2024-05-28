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

T12- O usuário não deve conseguir digitar letras na tela de recarga
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Recarga de celular
    Quando digito letras ao invés dos números
    Então as letras não aparecerão na tela

T13- Quando o usuário digita letras e números apenas números aparecem na tela de recarga
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Recarga de celular
    Quando digito letras e números
    Então apenas os números do telefone aparecem

T14- O usuário pode digitar no máximo 11 números no input de recarga 
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Recarga de celular
    Quando digito 11 números
    Então aparecem 11 números na tela do celular

T15- O usuário não deve conseguir digitar 12 numeros ou mais no input de recarga
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Recarga de celular
    Quando digito 12 números ou mais
    Então só mostrará 11 números na tela do celular

T16- O usuário deve conseguir interagir com a sessão Cobrar
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Então posso digitar o valor que eu espero cobrar

T17- Quando o usuário digita letras e números apenas números aparecem na tela de cobrança
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Quando digito letras ao invés dos números
    Então as letras não aparecerão na tela

T18- O usuário pode digitar no máximo 14 números no input de recarga
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Quando digito 14 números
    Então aparecem 14 números na tela de cobrança

T19- O usuário não deve conseguir digitar 15 numeros ou mais no input de recarga
    Dado que acessei o aplicativo Nubank Clone
    Quando aperto o botão Cobrar
    Quando digito 15 números
    Então o input volta a ficar em branco

T20- O usuário deve conseguir clicar no botão de Doação
    Dado que acessei o aplicativo Nubank Clone
    Quando faço um swipe do carrossel de botões
    Então consigo clicar no botão

T21- O usuário deve conseguir clicar no botão de Encontrar Atalhos
    Dado que acessei o aplicativo Nubank Clone
    Quando faço um swipe do carrossel de botões
    Então consigo clicar no botão criar atalhos

T22- O usuário deve conseguir clicar no botão Meus Cartões
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão meus cartões
    Então consigo ver que ele está ligado

T23- O usuário deve conseguir clicar no botão "Conquiste planos futuros"
    Dado que acessei o aplicativo Nubank Clone
    Então consigo clicar no botão "Conquiste planos futuros"

T24- O usuário deve conseguir apertar o botão "Você tem 10 mil para empréstimos"
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão "Você tem 10 mil para empréstimos"
    Então posso usar os recursos da seção de empréstimos