class Cadastro
  def btn_novo_cadastro
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/imageView7').click
end

  def preencher_dados
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/txtNome').send_keys 'Juan Fernandes' # nome
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/txtTelefone').send_keys '11986901384' # telefone
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/txtEmail').send_keys 'juandime@gmail.com' # email
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/txtCpf').send_keys '35995239830' # cpf
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/imageView12').click # salvar
    end

  def validar_cadastro
    teste = driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/txvNome').text
    if teste == 'Juan Fernandes'
      puts 'Usuario cadastrado'
    else
      raise('Usuario não cadastrado')
    end
    end

  def consultar_cliente
    if driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/txvNome')
        return true
    end
        rescue
    return false
  end

  def deletar_cliente
    driver.find_element(:id, 'br.com.wagner.cadastrodeclientes:id/imageView16').click
    driver.find_element(:id, 'android:id/button1').click
  end
end
