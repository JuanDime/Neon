require 'appium_lib'
require 'pry'
require 'capybara'
require 'capybara/cucumber'

def caps
  { caps: {
    deviceName: 'emulator-5554',
    platformName: 'Android',
    appPackage: 'br.com.wagner.cadastrodeclientes',
    appActivity: 'br.com.wagner.cadastrodeclientes.ListarActivity',
    newCommandTimeout: '3600'
  } }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
@selenium_driver = @appium_driver.start_driver
