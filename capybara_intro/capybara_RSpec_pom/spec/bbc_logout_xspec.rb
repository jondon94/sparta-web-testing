require 'spec_helper'

describe 'Valid user credentials allow siging in and signing out' do

  context 'it should send user to the home page signed when signing out' do

    it 'should successfully sign in when entering valid account information' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_in_username('jdonaldson@spartaglobal.com')
      @bbc_site.bbc_sign_in_page.fill_in_password('93bh64ej')
      @bbc_site.bbc_sign_in_page.click_sign_in_button
    end

    it "should log out when prompted" do
      @bbc_site = BbcSite.new
      @bbc_site.account_page.visit_account_page
      @bbc_site.account_page.click_sign_out_link
      @bbc_site.account_page.click_continue_link
      sleep 2
    end
  end
end
