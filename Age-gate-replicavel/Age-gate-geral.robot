***Settings***
Documentation   Teste de Age Gate geral dos sites

Library   Browser

Resource    resource/facilidade.robot

# gancho para tirar screenshot apos a execução de cada teste
Test Teardown       Take Screenshot

*** Test Cases ***
Maior de 18 anos

    Abrir navegador
    #buscar a frase VOCÊ É MAIOR DE 18 ANOS?  
    Wait For Elements State     h3[class="coh-heading coh-ce-cpt_age_gate-a2606a94"]     visible     3
    #buscar a frase de DIREITOS RESERVADOS
    Wait For Elements State     css=p[class*="direitos reservados coh-ce-cpt_age_gate"]     visible     3
    #encontrar imagem da LOGO
    Wait For Elements State     xpath=//img[contains(@class, "coh-image coh-ce-cpt_age_gate-2e40a9ee coh-image-responsive-xs")]/..   visible       3
    #buscar frase beba com moderação
    Wait For Elements State     xpath=//p[contains(text(),"Beba com moderação. Não compartilhe este conteúdo com menores de idade.")]       visible       3
     #clicar no botão SIM no age gate
    Click                       id=age-gate--yes   
      

Menores de 18 anos

    Abrir navegador 
     #clicar no botão NÃO do age gate
    Click           id=age-gate--no 
    #clicar botão aceitar cookies dominio ambev
    Click           button[title="Aceitar cookies"] 
    #buscar a imagem da AMBEV
    Wait For Elements State     css=a[rel="home"]       visible     3
    #buscar texto de CONSUMO RESPONSÁVEL 
    Wait For Elements State     css=h2[class*="title--2"]   visible     3
    #buscar texto DESCULPE
    Get Text        div[class=main-section__content]      contains     Desculpe, o conteúdo desse site não está liberado para você.