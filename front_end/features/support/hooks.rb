Before do |scenario|
  @feature_name = scenario.feature.name
  @scenario_name = scenario.name
end

AfterStep do |step|
  # setando no prompt de comando a variavel nivel_evidencia, pode controlar te ou não uma evidencia a cada passo
  screenshot = "../../../Desktop/automation_claro/front_end/features/reports/screenshots/#{@feature_name}/#{@scenario_name}/screenshot.png"
  page.save_screenshot(screenshot)
  tempimg = File.open(screenshot, 'rb')
  encoded_img = Base64.encode64(tempimg.read)
  embed("data:image/png;base64,#{encoded_img}", 'image/png', "Evidencia visual: #{screenshot}")
  tempimg.close
end

