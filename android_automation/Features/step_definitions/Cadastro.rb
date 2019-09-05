cadastro = Cadastro.new

Dado("que eu acesse a tela de novo usuario") do
    cadastro.btn_novo_cadastro
  end
  
  Dado("preencha um novo cadastro de usuario") do
    cadastro.preencher_dados 
  end
  
   Entao("valido se o cadastro foi realizado com sucesso") do
    cadastro.validar_cadastro
   end

#    Entao("deleto o cliente") do
#     cadastro.deletar_cliente
#   end
  Dado("que eu acesse a tela de usuario") do
    if cadastro.consultar_cliente == false
        cadastro.btn_novo_cadastro
        cadastro.preencher_dados
    else
        puts "Cliente ja cadastrado"
    end
  end
  
  Entao("gostaria de deletar um cliente") do
    cadastro.deletar_cliente
  end