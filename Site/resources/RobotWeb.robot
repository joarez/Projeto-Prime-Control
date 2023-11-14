*** Settings ***

Resource          base.robot    # robotcode: ignore   

*** Variables ***
${TXT_Logina}      //*[@id="app"]/div[1]/div/div[1]/div/div[2]/h5
${Btn_Login}       //*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button   
${Btn_PIM}         //*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a
${Employee_ Name}  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[1]/div/div/div[2]/div[1]/div[2]/input
${EditNome}        //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div[1]/div/div[9]/div/button[2]/i
${EditAplelido}    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[1]/div[2]/div/div/div[2]/input
${Anexo}           //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[3]/div[1]/div/button
${BtnSalvar}       //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[2]/div/form/div[2]/button
${Mensagem}        //*[@id="oxd-toaster_1"]

***Keywords***
Dado que o usuário esteja no site
   Maximize Browser window   

E clicar em “My Info”
  Wait Until Element Is Visible   ${TXT_Logina}  
  Wait Until Element Is Visible   ${input_Usuario}
  Click element                   ${input_Usuario}
  Input Text   ${input_Usuario}   ${Username}
  Click element                   ${input_Pass_Word}
  Input Text  ${input_Pass_Word}  ${Password}
  Capture Page Screenshot         Login.png
  Click element                   ${Btn_Login}
  Sleep  3s

E Realizar o preenchimento do campos com dados aleatórios 
  Capture Page Screenshot         Edição_Cadastro.png
  Click element                   ${Btn_PIM}  
  execute javascript              window.scrollTo(1700,200)
  Wait Until Element Is Visible   ${EditNome}
  Click element                   ${EditNome}
  Sleep  2s
  Double Click Element            ${Employee_ Name}
  Input Text   ${Employee_ Name}  ${Nome}
  Wait Until Element Is Visible   ${EditAplelido}
  Click element                   ${EditAplelido}
  Input Text   ${EditAplelido}    ${Apelido}
  Capture Page Screenshot         EdiçãoCadastro.png
  execute javascript              window.scrollTo(0,1500)

E Realizar a add de um anexo 
  Wait Until Element Is Visible  ${Anexo}
  Click element                  ${Anexo}
  Click element                  ${Selecione_arquivo}
  Capture Page Screenshot        Anexo.png
  Choose File   file-upload      ${FILE}   
 # Choose File  ${EXECDIR}/PrimeControl/Site/imagens.png
  Click Element    ${FILE}

Quando clicar em “Save” de cada etapa 
  Click element                  ${BtnSalvar} 
  
Então o sistema deve apresentar a mensagem “Success – Successfully save”
  Wait Until Element Is Visible  ${Mensagem}
  Sleep  1s 
  Capture Page Screenshot        Successfully save.png
