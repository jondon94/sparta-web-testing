require 'spec_helper'
require_relative '../selenium_demoqa_registration'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eql'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      expect(@driver.first_name_field_displayed).to be(true)
    end

    it 'should accept a last name' do
      expect(@driver.last_name_field_displayed).to be(true)
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.select_marital_option).to be(true)
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.select_hobby_option).to be(true)
    end

    it 'should have a country default of Afhghanistan' do
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select
      @driver.dob_day_list_select
      @driver.dob_year_list_select
    end

    it 'should accept a new country value' do

    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('+44763324999')
      expect(@driver.get_phone_number_field_value).to eq('+44763324999')

    end

    it 'should accept a username' do

    end

    it 'should accept a about yourself text' do

    end

    it 'should accept a password' do

    end

    it 'should accept a password confirmation' do

    end

  end

end
