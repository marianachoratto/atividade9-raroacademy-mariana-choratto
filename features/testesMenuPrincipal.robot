*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T1- Quando acessar o aplicativo o usuário deverá ter acesso à informações pessoais
    Dado que acessei o aplicativo Nubank Clone
    Então tenho acesso à várias funcionalidades e informações pesssoais

# TESTANDO CARROSSEL DE BOTÕES 
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

# TESTANDO "BOTÕES MEUS CARTÕES" E OUTROS
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

# TESTANDO AS SEÇÕES DO APP: CONTA, CARTÃO DE CRÉDITO, EMPRÉSTIMO, INVESTIMENTOS, SEGURO DE VIDA E DESCUBRA MAIS
T25- O usuário deve conseguir interagir com a sessão de conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    Então tenho acesso às informações da minha conta

T26- O usuário deve ter acesso ao histórico de pagamentos da conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    Então tenho acesso ao histórico de pagamento

T27- O usuário deve poder interagir com o botão de depositar da conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E depois no botão depositar
    Então posso usar os recursos da seção de depósito

T28-O usuário deve poder interagir com o botão de pagar da página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão pagar
    Então consigo visualizar suas funcionalidades

T29- O usuário deve poder interagir com o botão transferir na página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão Transferir
    Então consigo vizualizar a página
    E fazer uma transferência

T30- O usuário deve poder interagir com o botão Empréstimos na página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão Empréstimos
    Então posso usar os recursos da seção de empréstimos

T31- O usuário deve poder interagir com o botão Cobrar da página Conta
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Conta
    E clico no botão Cobrar
    Então posso digitar o valor que eu espero cobrar

T27- O usuário deve conseguir interagir com a sessão cartão de crédito
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão cartão de crédito
    Então posso interargir com os recursos da sessão

T28- O usuário deve poder ver informações sobre a fatura do cartão
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão cartão de crédito
    Então posso ver informações sobre a fatura

T26-O usuário deve conseguir interagir com a sessão Empréstimo
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão empréstimo
    Então posso usar os recursos da seção de empréstimos

T26- O usuário deve conseguir interagir com a sessão Investimentos
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Investimentos
    Então tenho acesso às funcionalidades da seção de investimentos

T27- O usuário deve conseguir interagir com a sessão Investimentos clicando no botão Conhecer
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Investimentos usando o botão Conhecer
    Então tenho acesso às funcionalidades da seção de investimentos

T28- O usuário deve conseguir clicar na sessão Seguro de Vida
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Seguro de Vida
    Então o botão está habilitado

T29- O usuário deve conseguir clicar no botão Quero Conhecer na sessão Descubra mais
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Quero conhecer
    Então ele deve estar habilitado

T30- O usuário deve conseguir clicar no botão Indicar Amigos na sessão Descubra mais
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão Indicar amigos
    Então devo ser capaz de indicar um amigo

# TESTANDO OS 3 ÍCONES DO CANTO SUPERIOR DIREITO
T31- O usuário deve poder fechar o a visualização do valor da conta clicando no ícone do olho
    Dado que acessei o aplicativo Nubank Clone
    Quando clícone no ícone de visualização
    Então o valor do saldo da conta desaparece
    E o valor da fatura do cartão de crédito também

T32- O usuário deve poder clicar no botão de ajuda
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão de ajuda
    Então ele estará habilitado

T33- O usuário deve poder indicar amigos
    Dado que acessei o aplicativo Nubank Clone
    Quando clico no botão de indicar amigos
    Então devo ser capaz de indicar um amigo