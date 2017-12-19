require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_account_page'
require_relative 'pages/bbc_reg_page'

class BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in_page
    BbcSignInPage.new
  end

  def account_page
    BbcAccountPage.new
  end

  def bbc_register_page
    BbcRegPage.new
  end

end
