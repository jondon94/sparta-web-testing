require 'selenium-webdriver'

class SeleniumQAToolsForm

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practise_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_first_name(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_last_name(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

end

practice_form_page = SeleniumQAToolsForm.new
practice_form_page.visit_practise_form
practice_form_page.input_first_name('Jon')
practice_form_page.input_last_name('Don')

sleep 3
