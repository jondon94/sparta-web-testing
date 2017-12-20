require 'capybara/dsl'

class BbcAccountPage
  include Capybara::DSL

  # Page Objects
  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'
  ACCOUNT_HOMEPAGE_URL = 'https://account.bbc.com/account?ptrt=https%3A%2F%2Fwww.bbc.co.uk%2F&userOrigin=homepage&context=homepage'
  SIGN_OUT_LINK_TEXT = 'Sign out'
  CONTINUE_SIGN_OUT = 'Continue'

  def visit_account_page
    visit(ACCOUNT_HOMEPAGE_URL)
  end

  def username_field
    find_field(:id, USERNAME_FIELD_ID)
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def password_field
    find_field(:id, PASSWORD_FIELD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def sign_in_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_sign_in_button
    sign_in_button.click
  end

  def find_sign_out_link
    find_link(SIGN_OUT_LINK_TEXT)
  end

  def click_sign_out_link
    click_link(SIGN_OUT_LINK_TEXT)
  end

  def find_cont_sign_out
    find_link(CONTINUE_SIGN_OUT)
  end

  def click_continue_link
    click_link(CONTINUE_SIGN_OUT)
  end



end
