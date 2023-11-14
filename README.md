# Automatizando API com Robot Framework
 Sobre

 #1° - Validar o campo Status Code (Resultado esperado deve ser 200)
 2° - Validar se o campo idade consta no ResponseBody (Resultado esperado deve ser Sucesso)
 3° - Validar se o valor do campo sexo do ResponseBody é igual a Masculino (Resultado esperado deve ser Sucesso)
 4° - Validar se o valor do campo sexo do ResponseBody é igual a Feminino (Resultado esperado deve ser Falha)
 5° - Armazenar o campo CPF do ResponseBody em uma variável nomeada CPF.
 6° Verificar se o CPF é valido fazendo a chamada do serviço validar cpf do 4devs, passando como parâmetro no campo txt cpf a variável setada no passo 4. (Resultado Esperado Verdadeiro)
 7° - Limpar a variável CPF.

 ## Script criado com Robot Framework com as bibliotecas:
  Library         SeleniumLibrary 
  Library         String
  Library         FakerLibrary
  Library         RequestsLibrary
  Library         JSONLibrary    
  Library         Collections

## Pré-requisitos
  Python instalado
  Robot Framework instalado
  RequestsLibrary (Robot)
  JSONLibrary
