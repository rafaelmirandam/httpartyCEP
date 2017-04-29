#language: pt

Funcionalidade: Teste do webservice de CEP dos correios

  Esquema do Cenário: Busca de um CEP
    Dado que eu faça o request passando o CEP "<cep>"
    Então o resultado do request vai ser exibido
  Exemplos:
    | cep     |
    |1        |
    |76873274 |
