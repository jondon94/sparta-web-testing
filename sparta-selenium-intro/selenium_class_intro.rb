require 'selenium-webdriver'

class SeleniumQAToolsForm

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  SEX_SELECTOR = 'sex'
  EXP_SELECTOR = 'exp-1'
  DATE_SELECTOR = 'datepicker'
  PROF_SELECTOR = 'profession-1'
  IMG_UPLOADER = 'photo'
  LINK_CLICKER = 'OnlineStore'
  AUTO_TOOL_PICKER = 'tool-1'

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

  def gender_selector(radio)
    @chrome_driver.find_element(:name, SEX_SELECTOR).click
  end

  def exp_selector(radio)
    @chrome_driver.find_element(:id, EXP_SELECTOR).click
  end

  def date_picker(text)
    @chrome_driver.find_element(:id, DATE_SELECTOR).send_keys(text)
  end

  def prof_selector(radio)
    @chrome_driver.find_element(:id, PROF_SELECTOR).click
  end

  def pic_selector
    @chrome_driver.find_element(:id, IMG_UPLOADER).click
  end

  def link_ckecher
    @chrome_driver.find_element(:partial_link_text, LINK_CLICKER).click
  end

  def auto_tool
    @chrome_driver.find_element(:id, AUTO_TOOL_PICKER).click
  end

  def cont_selector
    continent_options = @chrome_driver.find_element(:id, 'continents')
    options = continent_options.find_elements(:tag_name => 'option')
    options.each{|option| if option.text == "North America"; option.click end}
  end

end

practice_form_page = SeleniumQAToolsForm.new
practice_form_page.visit_practise_form
practice_form_page.input_first_name('Jon')
practice_form_page.input_last_name('Don')
practice_form_page.gender_selector('Male')
practice_form_page.exp_selector('2')
practice_form_page.date_picker('21/07/1994')
practice_form_page.prof_selector('Automation Tester')
# practice_form_page.pic_selector
# practice_form_page.link_ckecher
practice_form_page.auto_tool
practice_form_page.cont_selector


sleep 3
