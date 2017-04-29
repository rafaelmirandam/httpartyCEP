Dado(/^que eu faça o request passando o CEP "([^"]*)"$/) do |cep|
  url = "http://correiosapi.apphb.com/cep/"+cep
  @retorno = HTTParty.get(url)
end

Então(/^o resultado do request vai ser exibido$/) do
  puts @retorno.body
  puts @retorno.message
  # Retorna a mesma coisa que o message
  # case @retorno.code
  #   when 200
  #     puts "Ok"
  #   when 404
  #     puts "CEP não encontrado!"
  #   when 400
  #     puts "Erro"
  # end
end
