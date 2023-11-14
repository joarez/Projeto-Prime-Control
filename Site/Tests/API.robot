*** Settings ***
Resource            ../resources/base.robot

*** Test Cases ***
Validar o campo Status Code (Resultado esperado deve ser 200)
    Dado que tenha sido realizado o POST na API 4DEVS
    E tenha retornado o ResponseBody
    Então deve retornar o status code 200

Validar se o campo Idade consta do ResponseBody (Resultado esperado deve ser Sucesso)
    Dado que tenha sido realizado o POST na API 4DEVS
    E tenha sido obtido o valor do campo Idade
    Então deve ser verificado se campo Idade consta no ResponseBody 

Validar se o valor do campo sexo do ResponseBody é igual a Masculino (Resultado esperado deve ser Sucesso)
    Dado que tenha sido realizado o POST na API 4DEVS
    E tenha sido obtido o valor do campo Sexo
    Então o campo Sexo deve ser igual a Masculino

Armazenar o campo CPF do ResponseBody em uma variável nomeada CPF
    Dado que tenha sido realizado o POST na API 4DEVS
    Quando o valor do campo CPF for gravado na variável CPF
    Então deve retornar o valor da variável CPF

Limpar a variável CPF
    Dado que tenha sido realizado o POST na API 4DEVS
    Quando o valor do campo CPF for gravado na variável CPF
    Então deve retornar o valor da variável CPF vazio