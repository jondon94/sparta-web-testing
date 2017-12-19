require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

session.visit('http://toolsqa.com/automation-practice-form')

session.fill_in('firstname', with: 'John')
session.fill_in('lastname', with: 'Dohn')
session.choose('sex-0')
session.choose('exp-2')
session.fill_in('datepicker', with: '21/07/1994')
session.find(:css, '#profession-1').click
session.select('Europe', from: 'continents')
session.click_button('submit')
sleep 2
