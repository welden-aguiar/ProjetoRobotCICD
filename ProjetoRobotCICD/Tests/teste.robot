*** Settings ***
Resource  ../Steps/stepsTeste.robot

Suite Teardown    Close Browser

*** Test Cases ***
Cenário: Validar o acesso ao site
    Given que acesso o site
    Then devo ver a página principal e seu conteúdo

Cenário: Validar que preencher a tela principal com dados válidos o sistema permite a inserção da imagem
    Given que acesso o site
    When envio uma imagem válida
    Then devo ver a imagem inserida na tela principal

Cenário: Validar que ao clicar em enviar sem preencher o campo image title o sistema apresenta mensagem de falha
    Given que acesso o site
    When enviar uma imagem sem preencher o campo image title
    Then devo ver a mensagem de falha do campo image title

Cenário: Validar que ao clicar em enviar sem preencher o campo image URL o sistema apresenta mensagem de falha
    Given que acesso o site
    When enviar uma imagem sem preencher o campo image URL
    Then devo ver a mensagem de falha do campo image URL
