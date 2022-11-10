*** Settings ***
Resource         base.robot

Test Setup       Nova Sessão
Test Teardown    Encerrar Sessão
*** Variables ***

${URL_BOX}      https://training-wheels-protocol.herokuapp.com/checkboxes
${IRON}         css:input[value='iron-man']
${THOR}         Xpath://*[@id='checkboxes']/input[3]


*** Test Cases ***
Marcando ID    
    Go To                        ${URL}/checkboxes
    Select Checkbox    id:thor

Marcando opção com CSS Selector
    [Tags]    ironman
    Go To                          ${URL_BOX}
    Select Checkbox                ${IRON}
    Checkbox Should Be Selected    ${IRON}

Marcando opção com Xpath
    [Tags]    thor    
    Go To                           ${URL_BOX}
    Select Checkbox                 ${THOR}
    Checkbox Should Be Selected     ${THOR}
    

*** Keywords ***
