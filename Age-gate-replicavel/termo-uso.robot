***Settings***
Documentation   Teste pag Termos de uso geral dos sites

Library   Browser

Resource    resource/facilidade.robot

# gancho para tirar screenshot apos a execução de cada teste
Test Teardown       Take Screenshot

*** Test Cases ***

Termos de uso
    Abrir navegador
     #clicar no botão age gate Termos de Uso
    Click           css=a[href="/termos-de-uso"]
    #Link do website 1° paragrafo
    Busca link da marca
    #buscar o link da pagina "nossas-marcas" 2° paragrafo
    Get Element State      css=a[href="http://www.AMBEV.com.br/nossas-marcas.html"]     visible       
    #buscar link da pagina de politica de privacidade
    Get Element State      css=a[href$="/politica-de-privacidade"]        visible    
    #buscar o link do email "dataprivacy@ambev.com.br" - 2.1 Revogação do consentimento
    Get Element State     css=a[href="mailto:dataprivacy@ambev.com.br"]       visible         
    #buscar o texto "disponível em https://www.ambev.com.br/contato" - 2.1 Revogação do consentimento -2.4  Política Anti-Spamming da AMBEV 
    Browser.Get Text    id=Termos-de-Uso-Paragraph       contains      https://www.ambev.com.br/contato  
    #buscar o texdo de email "AMBEV por meio do SAC@MICHELOBULTRA.COM.BR" - 9. PROCEDIMENTO EM CASO ATIVIDADES DE CARÁTER LÍCITO
    Get Element State     css=a[href^="mailto:sac@"]       visible        