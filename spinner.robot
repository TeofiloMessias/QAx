*** Settings ***

Resource    ..//resources/base.resource

# Opção Select no robot é chamado de Swipe
*** Test Cases ***
Deve escolher o nével Padawan
    Start session
    Get started

    Navigate to     Formulários
    Go to item     Cadastro    Crie sua conta
    
    Select Level    Padawan
    
    Close session

Deve escolher o nével Jedi
    Start session
    Get started

    Navigate to     Formulários
    Go to item     Cadastro    Crie sua conta
    
    Select Level    Jedi
    
    Close session

Deve escolher o nével Sith
    Start session
    Get started

    Navigate to     Formulários
    Go to item     Cadastro    Crie sua conta
    
    Select Level    Sith
    
    Close session

Deve escolher o nével Outros
    Start session
    Get started

    Navigate to     Formulários
    Go to item     Cadastro    Crie sua conta
    
    Select Level    Outros
    
    Close session

*** Keywords ***
Select Level
    [Arguments]    ${level}

     Click Element    id=com.qaxperience.yodapp:id/spinnerJob
     Wait Until Element Is Visible    class=android.widget.ListView
     Click Text    ${level}

