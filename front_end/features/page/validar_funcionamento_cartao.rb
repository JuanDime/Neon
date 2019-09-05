class Login < SitePrism::Page
  #Neon
  element :status, :xpath, '//*[@id="content-wrapper"]/main/article/div/div/ul[5]/li[3]/label/h4'
  
  def acessar_tela_status
    visit 'https://neon.com.br/'
    click_on "Status" 
    sleep 4
  end

  def validar_servico_cartao
expect(page).to have_content("Funcionando normalmente")

  end

end

