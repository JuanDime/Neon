class Login < SitePrism::Page
  #Neon
  element :pergunta, :xpath, '//*[@id="content-wrapper"]/main/article/div/div/ul[5]/li[3]/label'
  element :resposta, :xpath, '//*[@id="content-wrapper"]/main/article/div/div/ul[5]/li[3]/div/div'
  
  def acessar_tela_perguntas
    visit 'https://neon.com.br/'
    click_on "Perguntas" 

  end

  def validar_pergunta
    pergunta.click
    @texto = "Não! Somos mais que um cartão, oferecemos uma conta digital. Muito mais simples, você movimenta sua conta e organiza a sua vida financeira direto no app =) Não cobramos mensalidade e anuidade, não fazemos você pegar fila e não exigimos mil papéis para você abrir sua conta. Aqui é tudo bem mais simples!"
  
   if resposta.text.include?(@texto) == true
  puts "texto identificado"
   else
  raise "Texto não identificado"
   end


  end

end

