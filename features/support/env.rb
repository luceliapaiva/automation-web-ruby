require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism' 
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
puts "ENVIRONMENT in runner >>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "environment/#{ENVIRONMENT}.yml")

Capybara.configure do |config|
config.default_driver = :selenium_chrome
config.app_host = CONFIG['url_default']
config.default_max_wait_time = 10
end
