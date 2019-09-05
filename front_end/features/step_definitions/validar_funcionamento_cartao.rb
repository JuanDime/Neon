login = Login.new
#menu_inicial = Menu_inicial.new

Dado(/^que acesse a pagina de status$/) do 
  login.acessar_tela_status
end

Entao(/^validar se servico de cartoes esta Funcionando$/) do 
  login.validar_servico_cartao
end
