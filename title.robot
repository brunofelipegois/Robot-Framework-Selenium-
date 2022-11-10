*** Settings ***
Resource         base.robot

Test Setup       Nova Sessão
Test Teardown    Encerrar Sessão

*** Test Cases ***
Should see page title
    Title Should Be    Training Wheels Protocol