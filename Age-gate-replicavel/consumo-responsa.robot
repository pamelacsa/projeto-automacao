***Settings***
Documentation   Teste pag Consumo Responsável geral dos sites

Library   Browser

Resource    resource/facilidade.robot

# gancho para tirar screenshot apos a execução de cada teste
Test Teardown       Take Screenshot

*** Test Cases ***

Consumo Responsável

    Abrir navegador
     #clicar no botão termos de uso
    Click           css=a[href="https://www.ambev.com.br/sustentabilidade/consumo-responsavel/"] 
    #clicar botão aceitar cookies dominio ambev
     
    #buscar o texto "para você acessar esse conteúdo, precisamos checar a sua idade"
    
    #clicar botão SIM dominio ambev
    
    #buscar texto CONSUMO
    Get Text    css=h1[class="cr-webdoor__title"]       contains        Consumo 
    #buscar texto AUTOCONHECIMENTO É LIBERDADE!
    Get Text    css=div[class="cr-webdoor__content"]    contains        Autoconhecimento é liberdade!