require 'capybara'
require 'capybara/cucumber'

PATH="c:/chromedriver/chromedriver.exe"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

