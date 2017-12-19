require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://demoqa.com/registration/'
  # Page field
  FIRST_NAME_FIELD = 'name_3_firstname'
  LAST_NAME_FIELD = 'name_3_lastname'
  MARITAL_STATUS =  ['single', 'married', 'divorced']
  HOBBY_STATUS =  ['dance', 'reading', 'cricket']
  COUNTRY_DROP_DOWN_LIST = 'dropdown_7'# id
  DOB_MONTH_DROPDOWN_LIST = 'mm_date_8'# id
  DOB_DAY_DROPDOWN_LIST = 'dd_date_8'# id
  DOB_YEAR_DROPDOWN_LIST = 'yy_date_8'# id
  PHONE_NUMBER_FIELDS =  # id
  USERNAME_FIELD =  # id
  EMAIL_FIELD =  # id
  PROFILE_PICTURE_BUTTON =  # id
  DESCRIPTION_FIELD =  # id
  PASSWORD_FIELD = # id
  CONFIRM_PASSWORD_FIELD =  # id
  SUBMIT_BUTTON = # name
  REGISTRATION_CONFIRMATION = #class

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  # first name field management - Difficulty Easy

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD)['value']
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).displayed?
  end

  # last name field management - Difficulty Easy

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, LAST_NAME_FIELD)['value']
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).displayed?
  end

  # Marital option management - Difficulty Medium

  def select_marital_option
    # Consider something like a case statement and check the selenium selected? method
    ran_num = rand(2)
    status = @chrome_driver.find_elements(:name, "radio_4[]")
    status.each do |stat|
      if stat['value'] == MARITAL_STATUS[ran_num]
        stat.click
        return stat.selected?
      end
    end
    # @chrome_driver.find_element(:name, MARITAL_STATUS).click
  end

  # hobby option management - Difficulty Medium

  def select_hobby_option
    # Consider something like a case statement and check the selenium selected? method
    ran_num = rand(2)
    status = @chrome_driver.find_elements(:name, "checkbox_5[]")
    status.each do |stat|
      if stat['value'] == HOBBY_STATUS[ran_num]
        stat.click
        return stat.selected?
      end
    end
  end

  # Select Country - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def get_selected_country
    country_list = @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    options = country_list.find_elements(:tag_name => 'option')
    options.each{|option| if option.text == "Brazil"; option.click end}
    # continent_options = @chrome_driver.find_element(:id, 'continents')
    # options = continent_options.find_elements(:tag_name => 'option')
    # options.each{|option| if option.text == "North America"; option.click end}
  end

  def country_dropdown_list_select(country)
    # afghanistan is at countrylist position 1 = deafult
  end

  # DOB management - Difficulty HARD

  # Look online how to handle option lists with Selenium in Ruby - you need to get used to solving problems
  # If you are spending too long see if anyone else has been successful
  # If no solution then a run through will happen once finished

  def dob_month_list_select
    months = @chrome_driver.find_element(:id, DOB_MONTH_DROPDOWN_LIST)
    options = months.find_elements(:tag_name => 'option')
    options.each{|option| if option.text == "7"; option.click end}
  end

  def dob_day_list_select
    days = @chrome_driver.find_element(:id, DOB_DAY_DROPDOWN_LIST)
    options = days.find_elements(:tag_name => 'option')
    options.each{|option| if option.text == "21"; option.click end}
  end

  def dob_year_list_select
    years = @chrome_driver.find_element(:id, DOB_YEAR_DROPDOWN_LIST)
    options = years.find_elements(:tag_name => 'option')
    options.each{|option| if option.text == "1994"; option.click end}
  end


  # Phone number field management - Difficulty Easy

  def set_phone_number_field(phone_number)
  end

  def get_phone_number_field_value
  end

  #  username field management - Difficulty Easy

  def set_user_name_field(user_name)
  end

  def get_user_name_field_value
  end

  # Email field management - Difficulty Easy

  def set_email_field(email)
  end

  def get_email_field_value
  end

  # about yourself / description field - Difficulty Easy

  def set_about_yourself_field(details)
  end

  def get_about_yourself_value
  end

  # Password management - Difficulty Easy

  def set_password_field(password)
  end

  def get_password_value
  end

  def set_confirmation_password_field(password)
  end

  def get_confirmation_password_value
  end

  # registration confirmation - Difficulty Easy

  def click_submit
  end

  def check_registration_successful
  end
end


reg_form_page = SeleniumDemoReg.new
reg_form_page.access_registration_form
reg_form_page.set_first_name_field('Jon')
reg_form_page.set_last_name_field('Don')
reg_form_page.select_marital_option
reg_form_page.select_hobby_option
reg_form_page.get_selected_country
reg_form_page.dob_month_list_select
reg_form_page.dob_day_list_select
reg_form_page.dob_year_list_select

sleep 1
