*** Settings ***

Resource     ../resources/base.resource

*** Test Cases ***
Deve logar com sucesso

    Start session
    Get started
    Navigate to    Formulários
    Go to item    Login    Olá Padawan, vamos testar o login?

    Input Text       id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Text       id=com.qaxperience.yodapp:id/etPassword    jedi
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Boas vindas, logado você está.

    Close session

Nao deve logar com senha incorreta

    Start session
    Get started
    Navigate to    Formulários
    Go to item    Login    Olá Padawan, vamos testar o login?

    Input Text       id=com.qaxperience.yodapp:id/etEmail       yoda@qax.com
    Input Text       id=com.qaxperience.yodapp:id/etPassword    123
    Click Element    id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    Oops! Crendeciais incorretas.

    Close session