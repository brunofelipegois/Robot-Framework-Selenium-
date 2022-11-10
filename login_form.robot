*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerrar Sessão


*** Test Cases ***
Login com Sucesso
    Go To    ${URL}/login
    Login With    stark    jarvis!

    Should See Logged User    Tony Stark

Senha invalida
    [Tags]    senha
    Go To    ${URL}/login
    Login With    stark    123

Usuario nao existe
    [Tags]    user
    Go To    ${URL}/login
    Login With    123    jarvis!

    ${erro}=    Get WebElement    id:flash
    Should Contain    ${erro.text}    O usuário informado não está cadastrado!


*** Keywords ***
Login With
    [Arguments]    ${uname}    ${pass}

    Input Text    css:input[name=username]    ${uname}
    Input Text    css:input[name=password]    ${pass}
    Click Element    class:btn-login

Should Contain Login Alert
    [Arguments]    ${expect_message}

    ${erro}=    Get WebElement    id:flash
    Should Contain    ${erro.text}    ${expect_message}
Should See Logged User
    [Arguments]    ${full_name}

    Page Should Contain   Olá, ${full_name}. Você acessou a área logada!