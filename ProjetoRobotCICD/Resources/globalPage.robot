*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://erickwendel.github.io/vanilla-js-web-app-example/
${BROWSER}    chrome

*** Keywords ***
Acessar o Site
    Open Browser    ${URL}    ${BROWSER}
    Set Selenium Timeout    15s
    Maximize Browser Window