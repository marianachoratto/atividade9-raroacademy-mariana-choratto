*** Settings ***
Resource    ../base.robot

Test Setup        Abrir App
Test Teardown     Teardown    

*** Test Cases ***
T36- O usuário deve conseguir clicar na sessão Seguro de Vida
    Dado que acessei o aplicativo Nubank Clone
    Quando clico na sessão Seguro de Vida
    Então o botão está habilitado