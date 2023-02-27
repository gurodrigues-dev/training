*** Settings ***
Library        Browser
Library        RPA.Desktop    WITH NAME    Desktop
Library        RPA.Windows    WITH NAME    Windows
Variables      ../../library/variables.py

*** Variables ***
${TIMEOUT}    10
&{SITES}      Amazon=https://www.amazon.com.br/    Kabum=https://www.kabum.com.br/    Kalunga=https://www.kalunga.com.br/
${CARRINHO}    //*[@id="nav-cart-count"]

*** Test Cases ***
Purchasing
    Dado que o navegador esteja aberto
    E entro no site da Amazon, verifico o carrinho
    #E entro na Kabum, verifico o carrinho
    #E entro na Kalunga, verifico o carrinho
    #Então retorno uma lista de compras, com nome da loja, produto e preço

*** Keywords ***
Dado que o navegador esteja aberto
    Open Browser    
E entro no site da Amazon, verifico o carrinho
    New Page    ${SITES['Amazon']}
    browser.Click    ${CARRINHO}
    Sleep    ${TIMEOUT}
    browser.Click    //*[@id="a-autoid-0-announce"]
    Sleep    ${TIMEOUT}
    Keyboard Input
    ...    insertText
    ...    ${EMAIL_AMAZON}
    Keyboard Key
    ...    press
    ...    Enter
    Sleep    ${TIMEOUT}
    Keyboard Input
    ...    insertText
    ...    ${SENHA_AMAZON}
    Keyboard Key
    ...    press
    ...    Enter
    Sleep    ${TIMEOUT}
    browser.Click    //*[@id="nav-cart-count-container"]/span[2]

E entro na Kabum, verifico o carrinho
    New Page     
E entro na Kalunga, verifico o carrinho
Então retorno uma lista de compras, com nome da loja, produto e preço
