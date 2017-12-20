require 'capybara/dsl'

class BbcHomepage

  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK_ID = "#idcta-link"

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    @driver = Capybara::Session.new(:chrome)
  end

  def visit_homepage
    @driver.visit(HOMEPAGE_URL)
  end

  def click_signin_page
    @driver.find(SIGN_IN_LINK_ID).click
  end

  def enter_email
    @driver.fill_in('useridentifier-input', :with 'sample@fake.com')
  end
end

test1 = BbcHomepage.new
test1.visit_homepage
test1.click_signin_page

sleep 4
