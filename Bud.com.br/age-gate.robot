***Settings***
Documentation   acesso pagina de Michelob.br

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
    Wait For Elements State     css=img[src="/sites/g/files/wnfebl871/files/logo-michelob-branco.png"]   visible       3
    #buscar frase beba com moderação
    Wait For Elements State     p[class="coh-paragraph Beba com moderação. Não compartilhe este conteúdo com menores de idade. coh-ce-cpt_age_gate-954cc606"]       visible       3
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

Consumo Responsável

    Abrir navegador
     #clicar no botão termos de uso
    Click           css=#age-gate > div.coh-container.coh-ce-cpt_age_gate-c1f47e5f > div > div > div > div.coh-column.coh-ce-cpt_age_gate-c6f43e87.coh-visible-xs.coh-col-xs-12.coh-visible-md.coh-col-md-6.coh-col-md-push-0.coh-col-md-pull-0.coh-col-md-offset-0 > div > ul > li:nth-child(1) > a
    #clicar botão aceitar cookies dominio ambev
    Click       css=button[title="Aceitar cookies"] 
    #buscar o texto "para você acessar esse conteúdo, precisamos checar a sua idade"
    Wait For Elements State     h2[class="age-gate-dialog__title"]       visible     3
    #clicar botão SIM dominio ambev
    Click       button[class="age-gate-dialog__answer-button"]
    #buscar texto CONSUMO
    Get Text    css=h1[class="cr-webdoor__title"]       contains        Consumo 
    #buscar texto AUTOCONHECIMENTO É LIBERDADE!
    Get Text    css=div[class="cr-webdoor__content"]    contains        Autoconhecimento é liberdade!

Politica de privacidade
    Abrir navegador

    #clicar no botão politica de privacidade
    Click           css=#age-gate > div.coh-container.coh-ce-cpt_age_gate-c1f47e5f > div > div > div > div.coh-column.coh-ce-cpt_age_gate-c6f43e87.coh-visible-xs.coh-col-xs-12.coh-visible-md.coh-col-md-6.coh-col-md-push-0.coh-col-md-pull-0.coh-col-md-offset-0 > div > ul > li:nth-child(2) > a
    #encontrar o elemento com link do insta header
    Get Element         css=a[class="coh-link coh-ce-cpt_header-de9d3816"] 
    #localizar o redirecionamento do logo        
    Get Element         css=a[href="/"]
    #localizar a imagem do logo
    Get Element         css=img[class="coh-image coh-image-responsive-xs"]
    #localizar o titulo politica de privacidade
    Get Text        css=span[style*="font-size: 31px; white-space: pre-wrap;"]        contains      Política de privacidade Michelob Ultra
    #localizar o primeiro link sobre o site Michelob
    Browser.Get Text    css=a[href="https://www.michelobultra.com.br/"]      contains        https://www.michelobultra.com.br/  
    #buscar o segundo link sobre politica de privacidade   
    Browser.Get Text    css=#corpo-texto-politica-de-privacidade > div > div > div > div > p:nth-child(12) > span > a       contains        http://michelobultra.com.br/politica-de-privacidade 
    #localizar o link presente dentro da palavra COOKIES              
    Get Element      css=#corpo-texto-politica-de-privacidade > div > div > div > div > p:nth-child(32) > span > a 
    #localizar a palavra COOKIES
    Browser.Get Text        css=#corpo-texto-politica-de-privacidade > div > div > div > div > p:nth-child(32) > span > a > span > span > span > span > span      contains        cookies
    #localizae o e-mail dataprivacy@ambev.com.br
    Get Element      css=#corpo-texto-politica-de-privacidade > div > div > div > div > p:nth-child(38) > span > span:nth-child(3)
    #localizar o link de suporte microsoft
    Browser.Get Text    css=a[href="https://support.microsoft.com/pt-br/help/17442/windows-internet-explorer-delete-manage-cookies"]       contains         https://support.microsoft.com/pt-br/help/17442/windows-internet-explorer-delete-manage-cookies   
    #localizar o link de suporte mozilla   
    Browser.Get Text    css=a[href="https://support.mozilla.org/pt-BR/kb/ative-e-desative-os-cookies-que-os-sites-usam"]       contains         https://support.mozilla.org/pt-BR/kb/ative-e-desative-os-cookies-que-os-sites-usam   
    #localizar o link de suporte google
    Browser.Get Text    css=a[href="https://support.google.com/accounts/answer/61416?co=GENIE.Platform%3DDesktop&hl=pt-BR"]       contains         https://support.google.com/accounts/answer/61416?co=GENIE.Platform%3DDesktop&hl=pt-BR
    #localizar o link de suporte apple
    Browser.Get Text    css=a[href="https://support.apple.com/pt-br/guide/safari/sfri11471/mac"]       contains         https://support.apple.com/pt-br/guide/safari/sfri11471/mac
    #localizar os links de "fale conosco"
    Browser.Get Text    css=#corpo-texto-politica-de-privacidade > div > div > div > div > p:nth-child(127)                      contains         https://www.ambev.com.br/meu_cadastro      https://www.ambev.com.br/contato   
    #localizar a imagem do footer top
    Wait For Elements State     css=img[class="coh-image coh-ce-cpt_footer-1aa19f6d coh-image-responsive-xs"]      visible     3

SAC 
    Abrir navegador
    #clicar no botão age gate SAC
    Click       css=#age-gate > div.coh-container.coh-ce-cpt_age_gate-c1f47e5f > div > div > div > div.coh-column.coh-ce-cpt_age_gate-c6f43e87.coh-visible-xs.coh-col-xs-12.coh-visible-md.coh-col-md-6.coh-col-md-push-0.coh-col-md-pull-0.coh-col-md-offset-0 > div > ul > li:nth-child(3) > a
    #buscar a palavra SAC
    Browser.Get Text    css=#block-corebr-whitelabel-content > article > div > div > div      contains        SAC
    #buscar o texto do email do SAC
    Browser.Get Text    css=#block-corebr-whitelabel-content > article > div > div > div > div.coh-container.coh-ce-cpt_customer_service-490fd635 > p       contains         sac@michelobultra.com.br   
    #buscar o link de redirecionamento para o insta    
    Get Element         css=#block-corebr-whitelabel-content > article > div > div > div > div.coh-container.coh-ce-cpt_customer_service-4ab9a284 > a

Termos de uso
    
    Abrir navegador
    #clicar no botão age gate SAC
    Click           css=#age-gate > div.coh-container.coh-ce-cpt_age_gate-c1f47e5f > div > div > div > div.coh-column.coh-ce-cpt_age_gate-c6f43e87.coh-visible-xs.coh-col-xs-12.coh-visible-md.coh-col-md-6.coh-col-md-push-0.coh-col-md-pull-0.coh-col-md-offset-0 > div > ul > li:nth-child(4) > a
    #buscar o primeiro link da pagina "nossas-marcas.html" 
    Browser.Wait For Elements State      css=a[href="http://www.ambev.com.br/nossas-marcas.html"]     detached    3
    #buscar o texto "disponível em https://www.ambev.com.br/contato" - 2.1 Revogação do consentimento
    Browser.Get Text    id=Termos de Uso - Paragraph    contains     disponível em https://www.ambev.com.br/contato  
    #buscar o texto "meio do site https://www.ambev.com.br/contato/." - 2.4  Política Anti-Spamming da AMBEV 
    Browser.Get Text    id=Termos de Uso - Paragraph      contains         meio do site https://www.ambev.com.br/contato/.
    #buscar o texdo de email "AMBEV por meio do SAC@MICHELOBULTRA.COM.BR" - 9. PROCEDIMENTO EM CASO ATIVIDADES DE CARÁTER LÍCITO
    Browser.Get Text    id=Termos de Uso - Paragraph      contains        AMBEV por meio do SAC@MICHELOBULTRA.COM.BR 