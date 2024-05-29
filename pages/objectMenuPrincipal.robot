*** Settings ***
Library    AppiumLibrary
Resource    ../base.robot

*** Variables ***
${PREFIXO}    //android.view.View


${COMPATIBILIDADE_ANDROID}        xpath=//android.widget.Button[@resource-id="android:id/button1"]
${SAUDACAO_USUARIO}               xpath=${PREFIXO} [@content-desc="Olá, Breno Freitas"]
${ÍCONE_OLHO}                     xpath=${PREFIXO_3}/android.widget.Button[1]
${ÍCONE_AJUDA}                    xpath=${PREFIXO_3}/android.widget.Button[2]
${ÍCONE_INDICAR_AMIGOS}           xpath=${PREFIXO_3}/android.widget.Button[3]


${CARROSSEL_BOTOES}               xpath=${PREFIXO_3}/android.widget.HorizontalScrollView[1]
${SALDO_CONTA}                    xpath=${PREFIXO} [contains(@content-desc, 'Conta')]

${CARTAO_CREDITO}                 xpath=${PREFIXO} [contains(@content-desc,"Fatura atual")]
${EMPRESTIMOS}                    xpath=${PREFIXO} [@content-desc="Empréstimo\nValor disponível de até\nR$ 10.000,00"]
${INVESTIMENTOS}                  xpath= ${PREFIXO} [contains(@content-desc,"Investimentos")]
${SEGURO_DE_VIDA}                 xpath= ${PREFIXO} [contains(@content-desc,"Seguro de vida")]
${DESCUBRA_MAIS}                  xpath= ${PREFIXO} [@content-desc="Descubra mais"]

${BOTÃO_MEUS_CARTÕES}             xpath=${PREFIXO} [@content-desc="Meus cartões"]
${BOTÃO_EMPRESTIMO_10_MIL}        xpath=${PREFIXO} [@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${BOTÃO_PLANOS_FUTUROS}           xpath=${PREFIXO} [@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]

# Página Conta
${PAGINA_CONTA}                   xpath=${PREFIXO_3}
${SALDO_DISPONÍVEL}               xpath=${PREFIXO} [@content-desc="Saldo disponível"]
${SALDO_DISPONÍVEL_181}           xpath=${PREFIXO} [@content-desc="R$ 181,79"]
${DINHEIRO_GAURDADO}              xpath=${PREFIXO} [@content-desc="Dinheiro guardado\nR$ 240,02"]
${RENDIMENTO_CONTA}               xpath=${PREFIXO} [@content-desc="Rendimento total da conta\n+R$ 0,20 este mês"]
    # Histórico da conta
${HISTÓRICO_1}                    xpath=${PREFIXO} [@content-desc="Transferência enviada\nOntem\nPATRICIA COSTA \nR$ 30,00\nPix"]
${HISTÓRICO_2}                    xpath=${PREFIXO} [@content-desc="Transferência recebida\nOntem\nANDRE JEY\nR$ 30,00\nPix"]
${HISTÓRICO_3}                    xpath=${PREFIXO} [@content-desc="Transferência recebida\nOntem\nERIKO BARBOSA\nR$ 30,00\nPix"]
${HISTÓRICO_4}                    xpath=${PREFIXO} [@content-desc="Transferência recebida\nOntem\nIVAN COELHO \nR$ 30,00\nPix"]
    # Botões da conta
${BOTÃO_DEPOSITAR_CONTA}          xpath=${PREFIXO_4}/android.widget.Button[1]
${BOTÃO_PAGAR_CONTA}              xpath=${PREFIXO_4}/android.widget.Button[2]
${BOTÃO_TRANSFERIR_CONTA}         xpath=${PREFIXO_4}/android.widget.Button[3]
${BOTÃO_EMPRESTIMO_CONTA}         xpath=${PREFIXO_4}/android.widget.Button[4]
${BOTÃO_COBRAR_CONTA}             xpath=${PREFIXO_4}/android.widget.Button[4]


# Página de empréstimo de 10 mil
${PAGINA_EMPRESTIMO}              xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]
${LINK_ENTENDA_COMO_FUNCIONA}     xpath=${PREFIXO} [@content-desc="Entenda como funciona >"]
${BOTÃO_NOVO_EMPRÉSTIMO}          xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]

# Página de cartão de crédito
${PAGINA_CARTÃO_CRÉDITO}          xpath=${PREFIXO_3}
${BOTÃO_PAGAR_FATURA}             xpath=${PREFIXO} [@content-desc="Pagar fatura"]
${BOTÃO_RESUMO_FATURAS}           xpath=${PREFIXO} [@content-desc="Resumo de faturas"]
${BOTÃO_AJUSTAR_LIMITES}          xpath=${PREFIXO} [@content-desc="Ajustar limites"]
${BOTÃO_CARTÃO_VIRTUAL}           xpath=${PREFIXO} [@content-desc="Cartão virtual"]
${BOTÃO_BLOQUEAR_CARTÃO}          xpath=${PREFIXO} [@content-desc="Bloquear cartão"]
${BOTÃO_AMIGOS_CRÉDITO}           xpath=${PREFIXO} [@content-desc="Indicar amigos"]
    # Faturas cartão de crédito
${FATURA_1}                       xpath=${PREFIXO} [@content-desc="Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix"]
${FATURA_2}                       xpath=${PREFIXO} [@content-desc="Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${FATURA_3}                       xpath=${PREFIXO} [@content-desc="Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]

# Página de Investimentos
${PÁGINA_INVESTIMENTOS}           xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View
${INVESTIMENTO_SEM_TAXAS}         xpath=${PREFIXO} [@content-desc="Invista sem taxas e burocracia!"]
${INVESTIMENTO_TEXTO_1}           xpath=${PREFIXO} [@content-desc="Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!"]
${INVESTIMENTO_TEXTO_2}           xpath=${PREFIXO} [@content-desc="Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações!"]
${BOTÃO_INVESTIMENTOS_CONHECER}   xpath=${PREFIXO} [@content-desc="Conhecer"]

# Sessão descubra mais
${BOTÃO_QUERO_CONHECER}           xpath=${PREFIXO} [@content-desc="Quero conhecer"]
${BOTÃO_INDICAR_AMIGOS}           xpath=${PREFIXO} [@content-desc="Indicar amigos"]

# Tela indicar amigos
${TELA_INDICAR_AMIGOS}            xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]
${BOTÃO_INDICAR_AMIGOS_DENTRO}    xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${TEXTO_INDICAR_AMIGOS}           xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]

*** Keywords ***
Apertar botão de incompatibilidade de versões Android
    Wait Until Page Contains Element    ${COMPATIBILIDADE_ANDROID}
    Click Element    ${COMPATIBILIDADE_ANDROID}

Dado que acessei o aplicativo Nubank Clone
    Apertar botão de incompatibilidade de versões Android
    Wait Until Page Contains Element    ${SAUDACAO_USUARIO}

Então tenho acesso à várias funcionalidades e informações pesssoais
    Checa se o elemento está presente na página    ${SAUDACAO_USUARIO}    ${SALDO_CONTA}    ${CARROSSEL_BOTOES}    ${BOTÃO_MEUS_CARTÕES}    ${CARTAO_CREDITO} 
    Swipe By Percent    50    75    50    3
    Checa se o elemento está presente na página    ${INVESTIMENTOS}    ${SEGURO_DE_VIDA}    ${DESCUBRA_MAIS}


Quando clico no botão meus cartões
    Espera o elemento para clicar    ${BOTÃO_MEUS CARTÕES}

Então consigo ver que ele está habilitado
    Element Should Be Enabled    ${BOTÃO_MEUS CARTÕES}

Quando clico no botão Conta
    Espera o elemento para clicar    ${SALDO_CONTA}

Então tenho acesso às informações da minha conta
    Wait Until Element Is Visible    ${PAGINA_CONTA}
    Checa se o elemento está visível    ${SALDO_DISPONÍVEL}    ${SALDO_DISPONÍVEL_181}    ${DINHEIRO_GAURDADO}    ${RENDIMENTO_CONTA}

Então tenho acesso ao histórico de pagamento
    Wait Until Element Is Visible    ${PAGINA_CONTA}
    Swipe By Percent    50    75    50    3
    Wait Until Element Is Visible    ${HISTÓRICO_4}
    Pega o atributo do elemento e verifica se tem o texto esperado    ${HISTÓRICO_1}    Transferência enviada\nOntem\nPATRICIA COSTA \nR$ 30,00\nPix    content-desc
    Pega o atributo do elemento e verifica se tem o texto esperado    ${HISTÓRICO_2}    Transferência recebida\nOntem\nANDRE JEY\nR$ 30,00\nPix    content-desc
    Pega o atributo do elemento e verifica se tem o texto esperado    ${HISTÓRICO_3}    Transferência recebida\nOntem\nERIKO BARBOSA\nR$ 30,00\nPix    content-desc
    Pega o atributo do elemento e verifica se tem o texto esperado    ${HISTÓRICO_4}    Transferência recebida\nOntem\nIVAN COELHO \nR$ 30,00\nPix    content-desc

E depois no botão Depositar
    Espera o elemento para clicar    ${BOTÃO_DEPOSITAR_CONTA}

E clico no botão pagar
    Espera o elemento para clicar    ${BOTÃO_PAGAR_CONTA}

E clico no botão Transferir
    Espera o elemento para clicar    ${BOTÃO_TRANSFERIR_CONTA}

E clico no botão Empréstimos
    Espera o elemento para clicar    ${BOTÃO_EMPRESTIMO_CONTA}

E clico no botão Cobrar
    Swipe By Percent    80    55    20    55
    Espera o elemento para clicar    ${BOTÃO_COBRAR_CONTA}

Então consigo clicar no botão "Conquiste planos futuros"
    Espera o elemento para clicar e checa se está habilitado    ${BOTÃO_PLANOS_FUTUROS}

Quando clico no botão "Você tem 10 mil para empréstimos"
    Espera o elemento para clicar e checa se está habilitado    ${BOTÃO_EMPRESTIMO_10_MIL}     

Quando clico na sessão Cartão de Crédito
    Espera o elemento para clicar    ${CARTAO_CREDITO}    

Então posso interargir com os recursos da sessão
    Wait Until Element Is Visible    ${PAGINA_CARTÃO_CRÉDITO}
    Page Should Contain Text    Fatura atual
    Page Should Contain Text    R$ 780,72
    Page Should Contain Text    Limite disponível R$ 806,78
    Checa se o elemento está presente na página    ${BOTÃO_PAGAR_FATURA}    ${BOTÃO_RESUMO_FATURAS}    ${BOTÃO_AJUSTAR_LIMITES}    ${BOTÃO_CARTÃO_VIRTUAL}
    Swipe By Percent    90    85    10    85
    Checa se o elemento está presente na página    ${BOTÃO_BLOQUEAR_CARTÃO}    ${BOTÃO_AMIGOS_CRÉDITO}    

Então posso ver informações sobre a fatura
    Swipe By Percent    50    75    50    3
    Wait Until Element Is Visible    ${FATURA_1}
    Pega o atributo do elemento e verifica se tem o texto esperado    ${FATURA_1}   Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix     content-desc
    Pega o atributo do elemento e verifica se tem o texto esperado    ${FATURA_2}    Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix    content-desc
    Pega o atributo do elemento e verifica se tem o texto esperado    ${FATURA_3}    Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix    content-desc

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

Então ele deverá estar habilitado
    Element Should Be Enabled    ${BOTÃO_QUERO_CONHECER}

Quando clico no botão Indicar amigos
    Swipe By Percent    50    90    50    3    1000
    Wait Until Page Contains Element    ${DESCUBRA_MAIS}    
    Swipe By Percent    90    85    10    85
    Espera o elemento para clicar    ${BOTÃO_INDICAR_AMIGOS}     

Então devo ser capaz de indicar um amigo
    Element Should Be Visible    ${TEXTO_INDICAR_AMIGOS}
    Element Should Be Visible    ${BOTÃO_INDICAR_AMIGOS_DENTRO}

Quando clíco no ícone de visualização
    Espera o elemento para clicar    ${ÍCONE_OLHO}

Então o valor do saldo da conta desaparece
    Page Should Not Contain Text    R$ 181,79

E o valor da fatura do cartão de crédito também
    Page Should Not Contain Text    R$ 780,72

Quando clico no botão de ajuda
    Espera o elemento para clicar    ${ÍCONE_AJUDA}

Então ele estará habilitado
    Element Should Be Enabled    ${ÍCONE_AJUDA}

Quando clico no botão de indicar amigos
    Espera o elemento para clicar    ${ÍCONE_INDICAR_AMIGOS}