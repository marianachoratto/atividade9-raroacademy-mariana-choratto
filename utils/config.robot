*** Settings ***

Resource    ../base.robot    

*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${APPIUM:APP}    D:\\Users\\Mariana Choratto\\Documents\\Mariana\\Programação\\Raro\\Exercicios pontuados\\atividade9-raroacademy-mariana-choratto\\app-armeabi-v7a-release.apk
${APPIUM:UDID}    RXCT702F7XT
${ANDROID_PLATFORM_NAME}    Android

*** Keywords ***
Abrir App
    Open Application    http://127.0.0.1:4723    automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}     AppiumUdid=${APPIUM:UDID}    app=${APPIUM:APP}

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications