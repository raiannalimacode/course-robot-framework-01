*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://www.amazon.com.br

*** Keywords *** 
Acessar a página da Amazon
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Pesquisar por celulares
    Input Text    locator=id:twotabsearchtextbox    text=celulares
    Click Element    locator=id:nav-search-submit-button

Validar o resultado
    Wait Until Page Contains    text=Resultados





 
