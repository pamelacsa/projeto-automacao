***Settings***
Documentation   Teste pag SAC geral dos sites

Library   Browser

Resource    resource/facilidade.robot

# gancho para tirar screenshot apos a execução de cada teste
Test Teardown       Take Screenshot

*** Test Cases ***

SAC 
    Abrir navegador
    #clicar no botão age gate SAC
    Click       css=a[href="/sac"]
    #buscar a palavra SAC
    Browser.Get Text    css=h2[class$="coh-ce-cpt_customer_service-48554325"]      contains        SAC
    #buscar o texto do email do SAC
       
    #buscar o link de redirecionamento para o insta    
    