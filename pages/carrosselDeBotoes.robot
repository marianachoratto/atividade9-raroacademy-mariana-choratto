*** Settings ***
Library    AppiumLibrary
Library    XML
Resource    ../base.robot

*** Variables ***
${PREFIXO_2}    //android.widget.ImageView/

# Botões do carrossel
${BOTAO_PIX}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BOTÃO_PAGAR_BOLETOS}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BOTAO_TRANSFERIR}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BOTÃO_DEPOSITAR}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTÃO_EMPRESTIMO}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTÃO_RECARGA_CEL}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BOTÃO_COBRAR_CARROSSEL}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BOTÃO_DOAÇÃO}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BOTAO_ENCONTRAR_ATALHOS}    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

# Página PIX
${PAGINA_PIX}        xpath= //android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]
# DIMINUIR ESSES XPATHS ------------------------
${BOTÃO_PAGAR}        xpath=//android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]/android.widget.Button[2]
${BOTÃO_TRANSFERIR}    xpath=//android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]/android.widget.Button[3]
${BOTÃO_COBRAR}        xpath=//android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]/android.widget.Button[4]
${MINHAS_CHAVES}        xpath=${PREFIXO} [@content-desc="Minhas chaves"]
${LIMITE_PIX}        xpath=${PREFIXO} [@content-desc="Meu limite Pix"]
${ME_AJUDA}        xpath=${PREFIXO} [@content-desc="Me ajuda"]

# Página pagar boletos
${PAGINA_PAGAR_BOLETOS}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View
${FUNC_PAGAR_COM_PIX}    xpath=${PREFIXO} [@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${FUNC_PAGAR_FATURA_CARTÕES}    xpath=${PREFIXO} [@content-desc="Pagar fatura do cartão\nLibera o limite do seu Cartão de Crédito."]
${FUNC_PAGAR_BOLETO}    xpath=${PREFIXO} [@content-desc="Pagar um boleto\nContas de luz, água, etc."]

# Página de Transferência
${INPUT_TRANSFERENCIA}    xpath=//android.widget.EditText

# Página Depósito
${PAGINA_DEPOSITO}    xpath=${PREFIXO} [@content-desc="Como você quer depositar na sua conta do Nubank"]
${DEPOSITO_PIX}    xpath=${PREFIXO} [@content-desc="Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana."]
${DEPOSITO_BOLETO}    xpath=${PREFIXO} [@content-desc="Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair."]
${DEPOSITO_TED_DOC}    xpath=//android.view.View[@content-desc="TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis."]
${DEPOSITO_TRAZER_SALARIO}    xpath=//android.view.View[@content-desc="Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo."]

# Página empréstimo
${PAGINA_EMPRESTIMO}    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[2]
${EMPRESTIMOS_TEXTO1}    xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${EMPRESTIMOS_TEXTO2}    xpath=//android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${EMPRESTIMOS_LINK}    xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${BOTÃO_NOVO_EMPRESTIMO}    xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]

# Página recarga de celular
${INPUT_CELULAR}    xpath=//android.widget.EditText

# Página Cobrar
${INPUT_COBRANCA}    xpath=//android.widget.EditText

*** Keywords ***
Quando aperto o botão Pix
    Espera o elemento para clicar    ${BOTAO_PIX}

# TESTE DANDO ERRO
Então tenho acesso às suas funcionalidades
    Wait Until Page Contains Element    ${PAGINA_PIX}
    Checa se o elemento está habilitado    ${BOTÃO_PAGAR}    ${BOTÃO_TRANSFERIR}    ${BOTÃO_COBRAR}    ${MINHAS_CHAVES}    ${LIMITE_PIX}    ${ME_AJUDA}

Quando aperto o botão Pagar
    Espera o elemento para clicar    ${BOTÃO_PAGAR_BOLETOS}

Então consigo visualizar suas funcionalidades
    Wait Until Page Contains Element    ${PAGINA_PAGAR_BOLETOS}
    Checa se o elemento está habilitado    ${FUNC_PAGAR_COM_PIX}    ${FUNC_PAGAR_FATURA_CARTÕES}    ${FUNC_PAGAR_BOLETO}   

Quando aperto o botão transferir
    Espera o elemento para clicar    ${BOTAO_TRANSFERIR}

Então consigo vizualizar a página
    Wait Until Page Contains Element    ${INPUT_TRANSFERENCIA} 
    ${hint}=    Get Element Attribute    ${INPUT_TRANSFERENCIA}    hint
    Should Contain    ${hint}    Qual é o valor da transferência?\nSaldo disponível em conta R$ 181,79    

E fazer uma transferência
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "15,00"

Quando digito letras ao invés dos números
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "abcd"
    
Então as letras não aparecerão na tela
    ${texto}    Get Element Attribute    ${INPUT_TRANSFERENCIA}    text
    Should Not Contain    ${texto}    abcd

Quando digito letras e números
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "abc78987"

Então apenas os números aparecem
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_TRANSFERENCIA}    R$ 7,89    

Quando digito 14 numeros
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "11122233344455"

Então aparecem 14 números na tela do celular
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_TRANSFERENCIA}    R$ 111.222.333.444,55    

Quando digito mais que 14 numeros
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "111222333444555"

Então à tela volta à 0
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_TRANSFERENCIA}    R$ 0,00

Quando aperto o botão depositar
    Espera o elemento para clicar    ${BOTÃO_DEPOSITAR}


Então posso usar os recursos da seção de depósito
   Wait Until Element Is Visible    ${DEPOSITO_PIX}
   Page Should Contain Text    Como você quer depositar na sua conta do Nubank
   Element Should Be Enabled    ${DEPOSITO_PIX}
   Page Should Contain Text    Pix&#10;Sem custo e cai na hora, mesmo de madrugada e fim de semana.
   Element Should Be Enabled    ${DEPOSITO_BOLETO}
   Page Should Contain Text    Boleto&#10;Sem custo e pode levar 3 dias úteis para o dinheiro cair.
   Element Should Be Enabled    ${DEPOSITO_TED_DOC}
   Page Should Contain Text    TED/DOC&#10;Pode ter custo e cai somente em horário comercial de dias úteis.
   Element Should Be Enabled    ${DEPOSITO_TRAZER_SALARIO}
   Page Should Contain Text    Trazer seu salário&#10;Receba todo mês direto aqui na sua conta, sem custo.

Quando aperto o botão Empréstimos
    Swipe By Percent    50    50    5    50
    Espera o elemento para clicar    ${BOTÃO_EMPRESTIMO}

Então posso usar os recursos da seção de empréstimos
    Wait Until Page Contains Element    ${PAGINA_EMPRESTIMO}
    Checa se o elemento está visível    ${EMPRESTIMOS_TEXTO1}    ${EMPRESTIMOS_TEXTO2}    ${BOTÃO_NOVO_EMPRESTIMO}    ${EMPRESTIMOS_LINK}

Quando aperto o botão Recarga de celular
    Swipe By Percent    90    50    15    50
    Espera o elemento para clicar    ${BOTÃO_RECARGA_CEL}        

Então posso digitar o numero do meu celular para recarga
    Page Should Contain Text    Qual número você quer recarregar?&#10;(DDD) + Número
    Espera o elemento para fazer o inputtext    ${INPUT_CELULAR}    71988725533

Então apenas os números do telefone aparecem
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_TRANSFERENCIA}    (78) 987

Quando digito 11 números
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "95756325874"

Então aparecem 11 números na tela do celular
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_TRANSFERENCIA}    (95) 75632-5874

Quando digito 12 números ou mais
    Espera o elemento para fazer o inputtext    ${INPUT_TRANSFERENCIA}    "9575632587411111"

Então só mostrará 11 números na tela do celular
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_TRANSFERENCIA}    (95) 75632-5874

Quando aperto o botão Cobrar
    Swipe By Percent    90    50    15    50
    Espera o elemento para clicar    ${BOTÃO_COBRAR_CARROSSEL}

Então posso digitar o valor que eu espero cobrar
    Espera o elemento para fazer o inputtext    ${INPUT_COBRANCA}    38514
    Page Should Contain Text    Qual valor você quer receber?

Quando digito 14 números
    Espera o elemento para fazer o inputtext    ${INPUT_COBRANCA}    "11122233344455"

Então aparecem 14 números na tela de cobrança
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_COBRANCA}    R$ 111.222.333.444,55

Quando digito 15 números
    Espera o elemento para fazer o inputtext    ${INPUT_COBRANCA}    "111222333444556"

Então o input volta a ficar em branco
    Wait Until Element Is Visible    ${INPUT_COBRANCA}
    Pega o atributo do elemento e verifica se tem o texto esperado    ${INPUT_COBRANCA}    R$ 0,00

Quando faço um swipe do carrossel de botões
    Swipe By Percent    90    50    15    50

Então consigo clicar no botão
    Espera o elemento para clicar e checa se está habilitado    ${BOTÃO_DOAÇÃO}    

Então consigo clicar no botão criar atalhos
    Espera o elemento para clicar e checa se está habilitado    ${BOTAO_ENCONTRAR_ATALHOS} 