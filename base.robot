*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${URL}          https://training-wheels-protocol.herokuapp.com/

*** Keywords ***
Nova Sessão
    Open Browser    ${URL}    chrome
Encerrar Sessão   
    Capture Page Screenshot 
    Close Browser
