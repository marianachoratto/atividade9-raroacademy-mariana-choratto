*** Settings ***

Resource    ../base.robot

*** Keywords ***
Espera o elemento para clicar
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Espera o elemento para clicar e checa se está habilitado
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Enabled    ${elemento}
    Click Element                    ${elemento}

Espera o elemento para fazer o inputtext
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Input Text                       ${elemento}    ${texto}

# # CHECAR SE ESSE ARGUMENTS ESTÁ FUNCIONANDO
# Pega o atributo do elemento e verifica se tem o texto esperado
#     [Arguments]    ${elemento}    ${item}
#     Wait Until Page Contains Element    ${elemento}
#     ${variavel}=    Get Element Attribute    ${elemento}    text
#     Should Contain    ${variavel}    ${item}

Pega o atributo do elemento e verifica se tem o texto esperado 2
    [Arguments]    ${elemento}    ${frase}    ${atributo}
    Wait Until Page Contains Element    ${elemento}
    ${variavel}=    AppiumLibrary.Get Element Attribute    ${elemento}    ${atributo}
    Should Contain    ${variavel}    ${frase}


Checa se o elemento está presente na página
    [Arguments]    @{ELEMENTOS}
    FOR    ${elemento}    IN    @{ELEMENTOS}
        Page Should Contain Element    ${elemento}
    END

Checa se o elemento está visível
    [Arguments]    @{ELEMENTOS}
    FOR    ${elemento}    IN    @{ELEMENTOS}
        Element Should Be Visible    ${elemento}
    END

Checa se o elemento está habilitado
    [Arguments]    @{ELEMENTOS}
    FOR    ${elemento}    IN    @{ELEMENTOS}
        Element Should Be Enabled    ${elemento}
    END