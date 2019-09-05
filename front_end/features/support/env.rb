require 'rspec'
require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'selenium-webdriver'
require 'webshot'
require 'base64'
require 'json'

# Configurando o driver capybara
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

# timeout
Capybara.default_max_wait_time = 30

# Maximizar a tela ao iniciar o teste
# Capybara.page.driver.browser.manage.window.maximize

$env = (ENV['ENV'] || 'pre-prod')
puts 'Programa executado no ambiente - ' + $env

if $env == 'preprod'
  $url_minha_claro = 'https://minhaclaroescondida.claro.com.br'
elsif $env == 'local'
  $url_minha_claro = 'https://gmail.com'
end
