*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot

# TIRAR TODOS OS PAGES SHOULD CONTAIN TEXT

*** Variables ***
${PREFIXO}    //android.view.View
${COMPATIBILIDADE_ANDROID}    xpath=//android.widget.Button[@resource-id="android:id/button1"]
${SAUDACAO_USUARIO}    xpath=${PREFIXO} [@content-desc="Olá, Breno Freitas"]
${ÍCONE_OLHO}    xpath=//android.widget.ScrollView/android.widget.Button[1]
${ÍCONE_AJUDA}    xpath=//android.widget.ScrollView/android.widget.Button[2]


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

# Página de cartão de crédito
${PAGINA_CARTÃO_CRÉDITO}    xpath=//android.widget.ScrollView
${BOTÃO_PAGAR_FATURA}    xpath=//android.view.View[@content-desc="Pagar fatura"]
${BOTÃO_RESUMO_FATURAS}    xpath=//android.view.View[@content-desc="Resumo de faturas"]
${BOTÃO_AJUSTAR_LIMITES}    xpath=//android.view.View[@content-desc="Ajustar limites"]
${BOTÃO_CARTÃO_VIRTUAL}    xpath=//android.view.View[@content-desc="Cartão virtual"]

# Página de Investimentos
${PÁGINA_INVESTIMENTOS}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View
${INVESTIMENTO_SEM_TAXAS}    xpath=//android.view.View[@content-desc="Invista sem taxas e burocracia!"]
${INVESTIMENTO_TEXTO_1}    xpath=//android.view.View[@content-desc="Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!"]
${INVESTIMENTO_TEXTO_2}    xpath=//android.view.View[@content-desc="Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações!"]
${BOTÃO_INVESTIMENTOS_CONHECER}    xpath=//android.view.View[@content-desc="Conhecer"]

# Sessão descubra mais
${BOTÃO_QUERO_CONHECER}    xpath=//android.view.View[@content-desc="Quero conhecer"]
${BOTÃO_INDICAR_AMIGOS}    xpath=//android.view.View[@content-desc="Indicar amigos"]

# Tela indicar amigos
${TELA_INDICAR_AMIGOS}        xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]
${BOTÃO_INDICAR_AMIGOS_DENTRO}    xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${TEXTO_INDICAR_AMIGOS}    xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]

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

Quando clico na sessão cartão de crédito
    Espera o elemento para clicar    ${CARTAO_CREDITO}    

Então posso interargir com os recursos da sessão
    Wait Until Element Is Visible    ${PAGINA_CARTÃO_CRÉDITO}
    Page Should Contain Text    Fatura atual
    Page Should Contain Text    R$ 780,72
    Page Should Contain Text    Limite disponível R$ 806,78
    Checa se o elemento está presente na página    ${BOTÃO_PAGAR_FATURA}    ${BOTÃO_RESUMO_FATURAS}    ${BOTÃO_AJUSTAR_LIMITES}    ${BOTÃO_CARTÃO_VIRTUAL}    

Quando clico na sessão empréstimo
    Swipe By Percent    50    75    50    3
    Espera o elemento para clicar    ${EMPRESTIMOS}     

Quando clico na sessão Investimentos
    Swipe By Percent    50    75    50    3
    Espera o elemento para clicar    ${INVESTIMENTOS}

Então tenho acesso às funcionalidades da seção de investimentos
    Wait Until Page Contains Element    ${PÁGINA_INVESTIMENTOS}
    Checa se o elemento está visível    ${INVESTIMENTO_SEM_TAXAS}    ${INVESTIMENTO_TEXTO_1}    ${INVESTIMENTO_TEXTO_2}

Quando clico na sessão Investimentos usando o botão Conhecer  
    Swipe By Percent    50    75    50    3
    Espera o elemento para clicar    ${BOTÃO_INVESTIMENTOS_CONHECER}

Quando clico na sessão Seguro de Vida
    Swipe By Percent    50    75    50    3
    Espera o elemento para clicar    ${SEGURO_DE_VIDA}

Então o botão está habilitado
    Element Should Be Enabled    ${SEGURO_DE_VIDA}

Quando clico no botão Quero conhecer
    Swipe By Percent    50    75    50    3
    Espera o elemento para clicar    ${BOTÃO_QUERO_CONHECER}

Então ele deve estar habilitado
    Element Should Be Enabled    ${BOTÃO_QUERO_CONHECER}

Quando clico no botão Indicar amigos
    Swipe By Percent    50    90    50    3    1000
    Wait Until Page Contains Element    ${DESCUBRA_MAIS}    
    Swipe By Percent    90    85    10    85
    Espera o elemento para clicar    ${BOTÃO_INDICAR_AMIGOS}     

Então devo ser capaz de indicar um amigo
    Element Should Be Visible    ${TEXTO_INDICAR_AMIGOS}
    Element Should Be Visible    ${BOTÃO_INDICAR_AMIGOS_DENTRO}

Quando clícone no ícone de visualização
    Espera o elemento para clicar    ${ÍCONE_OLHO}

Então o valor do saldo da conta desaparece
    Page Should Not Contain Text    R$ 181,79

E o valor da fatura do cartão de crédito também
    Page Should Not Contain Text    R$ 780,72

Quando clico no botão de ajuda
    Espera o elemento para clicar    ${ÍCONE_AJUDA}

Então ele estará habilitado
    Element Should Be Enabled    ${ÍCONE_AJUDA}