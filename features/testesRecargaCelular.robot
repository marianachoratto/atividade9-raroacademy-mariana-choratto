*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
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