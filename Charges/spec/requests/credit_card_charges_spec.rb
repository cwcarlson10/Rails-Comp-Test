require 'minitest/autorun'
require 'spec_helper'

describe "cretdit_card_charges" do
  describe "index page" do
    it "should have the h1 'Successful Charges'" do
      visit '/credit_card_charges/index'
      page.all('h1.Successful Charges')
    end

    it "should have the h1 'Disputed Charges'" do
      visit '/credit_card_charges/index'
      page.all('h1.Disputed Charges')
    end

    it "should have the h1 'Failed Charges'" do
      visit '/credit_card_charges/index'
      page.all('h1.Failed Charges')
    end
  end
end
