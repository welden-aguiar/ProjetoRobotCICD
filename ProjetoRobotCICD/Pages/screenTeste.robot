*** Settings ***
Resource    ../Resources/globalPage.robot

*** Variables ***
${ICON_TITLE}    //span[@aria-label="Image Title Icon"]
${INPUT_TITLE}    id=title
${ICON_URL_TITLE}    //span[@aria-label="Image URL Icon"]
${INPUT_URL_TITLE}    id=imageUrl
${BUTTON_SEND}    id=btnSubmit
${MODAL_ERROR_INPUT_TITLE}    //div[contains(text() , "Please type a title for the image")]
${MODAL_ERROR_INPUT_URL_TITLE}    //div[contains(text() , "Please type a valid URL")]


*** Keywords ***
validar o titulo da página
    Title Should Be    TDD Frontend Example

validar o ícone do campo image title
    Element Should Be Visible    ${ICON_TITLE}

validar o campo de texto image title
    Element Should Be Visible    ${INPUT_TITLE}

Validar o ícone do campo image URL
    Element Should Be Visible    ${ICON_URL_TITLE}

Validar o campo de texto image URL
    Element Should Be Visible    ${INPUT_URL_TITLE}

Validar o botão Enviar
    Element Should Be Visible    ${BUTTON_SEND}

Preencher o campo de texto image title com o valor ${TITLE}
    Input Text    ${INPUT_TITLE}    ${TITLE}

Preencher o campo de texto image URL com o valor ${URL}
    Input Text    ${INPUT_URL_TITLE}    ${URL}

Clicar no botão enviar
    Click Element    ${BUTTON_SEND}

Validar que o texto da imagem é ${TEXT}
    ${IMAGE_TEXT}    Set Variable    //h4[text()="${TEXT}"]
    Wait Until Element Is Visible    ${IMAGE_TEXT}
    Element Should Be Visible    ${IMAGE_TEXT}

Validar que a imagem da URL ${IMAGE_URL} foi inserida
    ${IMAGE_URL}    Set Variable    //img[@src="${IMAGE_URL}"]
    Wait Until Element Is Visible    ${IMAGE_URL}
    Element Should Be Visible    ${IMAGE_URL}

Validar mensagem de erro no campo image title
    Wait Until Element Is Visible    ${MODAL_ERROR_INPUT_TITLE}
    Element Should Be Visible    ${MODAL_ERROR_INPUT_TITLE}

Validar mensagem de erro no campo image URL
    Wait Until Element Is Visible    ${MODAL_ERROR_INPUT_URL_TITLE}




