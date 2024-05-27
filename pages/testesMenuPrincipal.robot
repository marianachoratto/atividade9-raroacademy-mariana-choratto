*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot

*** Variables ***
${PREFIXO}    //android.view.View
${COMPATIBILIDADE_ANDROID}    xpath=//android.widget.Button[@resource-id="android:id/button1"]
${SAUDACAO_USUARIO}    xpath=${PREFIXO} [@content-desc="Olá, Breno Freitas"]
${CARROSSEL_BOTOES}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]
${SALDO_CONTA}    xpath=${PREFIXO} [contains(@content-desc, 'Conta')]
${BOTAO_MEUS_CARTOES}    xpath=${PREFIXO} [@content-desc="Meus cartões"]

${CARTAO_CREDITO}    xpath=${PREFIXO} [contains(@content-desc,"Fatura atual")]
${EMPRESTIMOS}    xpath=${PREFIXO} [@content-desc="Empréstimo\nValor disponível de até\nR$ 10.000,00"]
${INVESTIMENTOS}    xpath= ${PREFIXO} [contains(@content-desc,"Investimentos")]
${SEGURO_DE_VIDA}    xpath= ${PREFIXO} [contains(@content-desc,"Seguro de vida")]
${DESCUBRA_MAIS}    xpath= ${PREFIXO} [@content-desc="Descubra mais"]

# RODA O CARROSSEL DE CARTÕES
# Swipe By Percent    50    50    35    50

*** Keywords ***
Apertar botão de incompatibilidade de versões Android
    Wait Until Page Contains Element    ${COMPATIBILIDADE_ANDROID}
    Click Element    ${COMPATIBILIDADE_ANDROID}

Dado que acessei o aplicativo Nubank Clone
    Apertar botão de incompatibilidade de versões Android
    Wait Until Page Contains Element    ${SAUDACAO_USUARIO}

Então tenho acesso à várias funcionalidades e informações pesssoais
    Page Should Contain Element    ${SAUDACAO_USUARIO}
    Page Should Contain Element    ${SALDO_CONTA}
    Page Should Contain Element    ${CARROSSEL_BOTOES}
    Page Should Contain Element    ${BOTAO_MEUS_CARTOES} 
    Page Should Contain Element    ${CARTAO_CREDITO}
    Swipe By Percent    50    50    50    25
    Wait Until Page Contains Element    ${EMPRESTIMOS}
    Swipe By Percent    50    50    50    3
    Page Should Contain Element    ${INVESTIMENTOS}
    Page Should Contain Element    ${SEGURO_DE_VIDA}
    Page Should Contain Element    ${DESCUBRA_MAIS}
