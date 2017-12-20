require 'spec_helper'


describe 'Incorrect user details produces valid error' do

  context 'it should respond with the correct error when incorrect details are input' do

    it 'should produce an error when inputting an incorrect password to a valid account' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link

      @bbc_site.bbc_sign_in_page.fill_in_username('jdonaldson@spartaglobal.com')
      @bbc_site.bbc_sign_in_page.fill_in_password('ch49ay')
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.incorrect_password_text).to eq('Uh oh, that password doesn’t match that account. Please try again.')

    end

    it 'should successfully sign in when entering a valid account' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link

      @bbc_site.bbc_sign_in_page.fill_in_username('jdonaldson@spartaglobal.com')
      @bbc_site.bbc_sign_in_page.fill_in_password('93bh64ej')
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      sleep 2
    end

  end

end
