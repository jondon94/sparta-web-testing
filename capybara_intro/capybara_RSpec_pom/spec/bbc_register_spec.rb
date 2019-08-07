require 'spec_helper'

describe 'Users should be able to register nw accounts' do

  context 'it should send user to the registration page' do

    it 'should send users through the veriication pages for signup process' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.click_register_link
      @bbc_site.bbc_register_page.input_day_value('21')
      @bbc_site.bbc_register_page.input_month_value('7')
      @bbc_site.bbc_register_page.input_year_value('1994')
      sleep 2
      @bbc_site.bbc_register_page.continue_signup_button
      # @bbc_site.bbc_register_page.input_vaild_email('jdon@fake.com')
      @bbc_site.bbc_register_page.input_vaild_email('jodo@fake.com')
      @bbc_site.bbc_register_page.input_new_password('24ch49ay')
      @bbc_site.bbc_register_page.click_for_verify_password
      @bbc_site.bbc_register_page.input_valid_postcode('ch4 9pf')
      @bbc_site.bbc_register_page.select_sex
      @bbc_site.bbc_register_page.email_updates_selection('optOut')
      @bbc_site.bbc_register_page.confirm_register
      sleep 2
    end
  end
end
