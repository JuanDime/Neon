login = Login.new
#menu_inicial = Menu_inicial.new

Dado(/^que acesse a pagina de perguntas$/) do 
  login.acessar_tela_perguntas
end

Entao(/^validar resposta$/) do 
  login.validar_pergunta
end
