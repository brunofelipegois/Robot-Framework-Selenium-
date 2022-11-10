*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerrar Sessão


*** Test Cases ***
Selecionar por texto e Validar por Valor
    Go To                                        ${URL}/dropdown
    Select From List By Label                    class:avenger-list                           Scott Lang
    # GET = BUSCAR O LABEL  
    # CRIEI UMA VARIAVEL PARA ARMAZENAR O "GET"
    ${Selected}=                                 Get Selected List Value                      class:avenger-list
    Should Be Equal                              ${Selected}                                  7

Selecionar pelo valor e Validar por texto
    [Tags]    loki
    Go To                                        ${URL}/dropdown
    Select From List By Value                    id:dropdown                                  6
    ${Selected}=                                 Get Selected List Label                      id:dropdown
    Should Be Equal                              ${Selected}                                  Loki
    