*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerrar Sessão

*** Test Cases ***
Verificado o valor ao informar o numero da linha
    [Tags]                      vin
    Go To                       ${URL}/tables
    Table Row Should Contain    id:actors    2    @vindiesel		

Descobre a linha pelo texto chave e valida os demais valores
    [Tags]            texto
    Go To                       ${URL}/tables
    #${target}= CRIEI ESSA VARIAVEL E ARMAZENEI O GET DENTRO DELA   
    ${target}=                  Get WebElement    xpath://tr[contains(.,'@chadwickboseman')]
    # MOSTRA NO LOG
    Log                          ${target.text}
    # MOSTRA NO CONSOLE
    Log To Console               ${target.text}
    Should Contain               ${target.text}    $ 700.000	
    Should Contain               ${target.text}    Pantera Negra	
