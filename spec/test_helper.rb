require 'rspec'
require 'capybara'
require 'capybara/rspec'

Capybara.run_server = false
Capybara.javascript_driver = :selenium
