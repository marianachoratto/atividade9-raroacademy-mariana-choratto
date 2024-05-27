*** Settings ***

Resource    ../base.robot

*** Keywords ***
Espera o elemento para clicar
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Espera o elemento para fazer o inputtext
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Input Text                       ${elemento}    ${texto}

# Checa se o elemento está presente na página
#     [Arguments]    ${elemento1}    ${elemento2}="oi"    ${elemento3}="oi"    ${elemento4}="oi"    ${elemento5}="oi"

#     @{ELEMENTOS}=    ${elemento1}    ${elemento2}    ${elemento3}    ${elemento4}    ${elemento5}

#     FOR    ${elemento}    IN    @{ELEMENTOS}
#         IF    "${elemento}" != "oi"
#             Page Should Contain Element    ${elemento}
#         END
#     END