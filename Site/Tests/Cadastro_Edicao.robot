*** Settings ***
Resource            ../resources/base.robot

Test Setup          Abrir Site


*** Test Cases ***
Caso de Teste 1: Realizar a alteração de informações do cadastro
    Dado que o usuário esteja no site
    E clicar em “My Info”
    E Realizar o preenchimento do campos com dados aleatórios
    E Realizar a add de um anexo
    Quando clicar em “Save” de cada etapa 
    Então o sistema deve apresentar a mensagem “Success – Successfully save”