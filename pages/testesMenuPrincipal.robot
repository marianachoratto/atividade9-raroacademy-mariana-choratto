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

${BOTÃO_MEUS CARTÕES}    xpath=//android.view.View[@content-desc="Meus cartões"]
${BOTÃO_EMPRESTIMO_10_MIL}    xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${BOTÃO_PLANOS_FUTUROS}    xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]

# Página de empréstimo de 10 mil
${PAGINA_EMPRESTIMO}    //android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]
${LINK_ENTENDA_COMO_FUNCIONA}    xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${BOTÃO_NOVO_EMPRÉSTIMO}    xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]


*** Keywords ***
Apertar botão de incompatibilidade de versões Android
    Wait Until Page Contains Element    ${COMPATIBILIDADE_ANDROID}
    Click Element    ${COMPATIBILIDADE_ANDROID}

Dado que acessei o aplicativo Nubank Clone
    Apertar botão de incompatibilidade de versões Android
    Wait Until Page Contains Element    ${SAUDACAO_USUARIO}

Então tenho acesso à várias funcionalidades e informações pesssoais
    Checa se o elemento está presente na página    ${SAUDACAO_USUARIO}    ${SALDO_CONTA}    ${CARROSSEL_BOTOES}    ${BOTAO_MEUS_CARTOES}    ${CARTAO_CREDITO} 
    Swipe By Percent    50    75    50    3
    Checa se o elemento está presente na página    ${INVESTIMENTOS}    ${SEGURO_DE_VIDA}    ${DESCUBRA_MAIS}


Quando clico no botão meus cartões
    Espera o elemento para clicar    ${BOTÃO_MEUS CARTÕES}

Então consigo ver que ele está ligado
    Element Should Be Enabled    ${BOTÃO_MEUS CARTÕES}

Então consigo clicar no botão "Conquiste planos futuros"
    Espera o elemento para clicar e checa se está habilitado    ${BOTÃO_PLANOS_FUTUROS}

Quando clico no botão "Você tem 10 mil para empréstimos"
    Espera o elemento para clicar e checa se está habilitado    ${BOTÃO_EMPRESTIMO_10_MIL}     
  