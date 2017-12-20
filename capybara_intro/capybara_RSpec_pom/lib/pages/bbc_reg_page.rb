require 'capybara/dsl'

class BbcRegPage
  include Capybara::DSL

  # Page Objects
  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  REGISTER_LINK_TEXT = 'Register now'
  DAY_INPUT_ID = 'day-input'
  MONTH_INPUT_ID = 'month-input'
  YEAR_INPUT_ID = 'year-input'
  CONT_SIGNUP_BUTTON_ID = 'submit-button'
  EMAIL_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  PASSWORD_SHOW_TEXT = 'Show password'
  POSTCODE_FIELD_ID = 'postcode-input'
  GENDER_DROPDOWN = 'gender-input'


  def visit_register_page
    visit(SIGN_IN_PAGE_URL)
  end

  def register_link
    find_link(REGISTER_LINK_TEXT)
  end

  def click_register_link
    click_link(REGISTER_LINK_TEXT)
  end

  def find_day_input
    find_field(:id, DAY_INPUT_ID)
  end

  def input_day_value(day)
    fill_in(DAY_INPUT_ID, with: day)
  end

  def find_month_input
    find_field(:id, MONTH_INPUT_ID)
  end

  def input_month_value(month)
    fill_in(MONTH_INPUT_ID, with: month)
  end

  def find_year_input
    find_field(:id, YEAR_INPUT_ID)
  end

  def input_year_value(year)
    fill_in(YEAR_INPUT_ID, with: year)
  end

  def find_continue_signup
    find_button(CONT_SIGNUP_BUTTON_ID)
  end

  def continue_signup_button
    find_continue_signup.click
  end

  def find_email_field
    find_field(:id, EMAIL_FIELD_ID)
  end

  def input_vaild_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def find_password_input
    find_field(:id, PASSWORD_FIELD_ID)
  end

  def input_new_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def find_show_password
    find_link(PASSWORD_SHOW_TEXT)
  end

  def click_for_verify_password
    click_link(PASSWORD_SHOW_TEXT)
  end

  def find_postcode_field
    find_field(:id, POSTCODE_FIELD_ID)
  end

  def input_valid_postcode(postcode)
    fill_in(POSTCODE_FIELD_ID, with: postcode)
  end

  def select_sex
    select('Male', :from => GENDER_DROPDOWN)
  end

  def email_updates_selection(opt)
    find(:xpath, ".//label[@for='#{opt}']/div/div").click
  end
end
