***Settings***
Documentation   Teste pag Politica de Privacidade geral dos sites

Library   Browser

Resource    resource/facilidade.robot

# gancho para tirar screenshot apos a execução de cada teste
Test Teardown       Take Screenshot

*** Test Cases ***

Politica de privacidade
    Abrir navegador
    #clicar no botão politica de privacidade
    Click           css=a[href="/politica-de-privacidade"]
    #localizar o redirecionamento do logo        
    Busca redirecionamento no logo heeader
    #localizar o link sobre o site
    Busca link da marca
    #buscar o link da pagina "nossas-marcas" 3° paragrafo
    Get Element State      css=a[href="http://www.AMBEV.com.br/nossas-marcas.html"]     visible  
    #buscar o link sobre termos de uso 4° paragrafo   
    Get Element State   css=a[href="https://www.cervezapatagonia.com.br/termos-de-uso"]     visible  
    #Localizar o email da Ambev no quadro de resumo
    Get Element State   css=a[href="mailto:dataprivacy@ambev.com.br"]       visible
    #localizar o link presente dentro da palavra COOKIES              
    Get Element      css=a[href="#Cookies"]     
    #localizar o link de suporte microsoft
    Browser.Get Text    css=a[href="https://support.microsoft.com/pt-br/help/17442/windows-internet-explorer-delete-manage-cookies"]       contains         https://support.microsoft.com/pt-br/help/17442/windows-internet-explorer-delete-manage-cookies   
    #localizar o link de suporte mozilla   
    Browser.Get Text    css=a[href="https://support.mozilla.org/pt-BR/kb/ative-e-desative-os-cookies-que-os-sites-usam"]       contains         https://support.mozilla.org/pt-BR/kb/ative-e-desative-os-cookies-que-os-sites-usam   
    #localizar o link de suporte google
    Browser.Get Text    css=a[href="https://support.google.com/accounts/answer/61416?co=GENIE.Platform%3DDesktop&hl=pt-BR"]       contains         https://support.google.com/accounts/answer/61416?co=GENIE.Platform%3DDesktop&hl=pt-BR
    #localizar o link de suporte apple
    Browser.Get Text    css=a[href="https://support.apple.com/pt-br/guide/safari/sfri11471/mac"]       contains         https://support.apple.com/pt-br/guide/safari/sfri11471/mac
    #localizar os link de "fale conosco"
    Get Element State   css=a[href="https://www.ambev.com.br/meu_cadastro"]     visible
    #localizar os link de "fale conosco"
    Get Element State     css=a[href="https://www.ambev.com.br/contato"]        visible


    
