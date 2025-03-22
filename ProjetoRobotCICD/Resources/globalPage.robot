*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://erickwendel.github.io/vanilla-js-web-app-example/
${BROWSER}    firefox
${OPTIONS}    add_argument("--headless")

*** Keywords ***
Acessar o Site
    Open Browser    ${URL}    ${BROWSER}   options=${OPTIONS}
    Set Selenium Timeout    15s
    Maximize Browser Window