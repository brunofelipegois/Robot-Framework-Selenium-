*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerrar Sessão


*** Test Cases ***
Selecionar por ID
    [Tags]    id
    Go To                                ${URL}/radios
    Select Radio Button                  movies    cap
    Radio Button Should Be Set To        movies    cap
Selecionar por Value
    [Tags]    value
    Go To                                ${URL}/radios
    Select Radio Button                  movies    guardians
    Radio Button Should Be Set To        movies    guardians
