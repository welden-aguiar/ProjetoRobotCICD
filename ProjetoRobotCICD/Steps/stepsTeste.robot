*** Settings ***
Resource    ../Resources/globalPage.robot
Resource    ../Pages/screenTeste.robot

*** Variables ***
${IMAGE_TEXT}    ET - Spielberg
${IMAGE_URL}    https://ingresso-a.akamaihd.net/b2b/production/uploads/article/image/836/et-o-extraterrestre-40-anos-imax.jpg

*** keywords ***
que acesso o site
    Acessar o Site

devo ver a página principal e seu conteúdo
    validar o titulo da página
    validar o ícone do campo image title
    validar o campo de texto image title
    Validar o ícone do campo image URL
    Validar o campo de texto image URL
    Validar o botão Enviar

envio uma imagem válida
    preencher o campo de texto image title com o valor ${IMAGE_TEXT}
    preencher o campo de texto image URL com o valor ${IMAGE_URL}
    clicar no botão enviar

devo ver a imagem inserida na tela principal
    Validar que o texto da imagem é ${IMAGE_TEXT}
    Validar que a imagem da URL ${IMAGE_URL} foi inserida

enviar uma imagem sem preencher o campo image title
    Preencher o campo de texto image URL com o valor ${IMAGE_URL}
    Clicar no botão enviar

devo ver a mensagem de falha do campo image title
    Validar mensagem de erro no campo image title

enviar uma imagem sem preencher o campo image URL
    Preencher o campo de texto image title com o valor ${IMAGE_TEXT}
    Clicar no botão enviar

devo ver a mensagem de falha do campo image URL
    Validar mensagem de erro no campo image URL
