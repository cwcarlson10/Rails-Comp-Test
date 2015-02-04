require 'minitest/autorun'
require 'spec_helper'

describe "cretdit_card_charges" do
  describe "index page" do
    it "should have the h1 'Successful Charges'" do
      visit '/credit_card_charges/index'
      page.all('h1.Successful Charges')
      page.all('div.well',    count: 10)
    end

    it "should have the h1 'Disputed Charges'" do
      visit '/credit_card_charges/index'
      page.all('h1.Disputed Charges')
      page.all('div.disputed-charges')

    end

    it "should have the h1 'Failed Charges'" do
      visit '/credit_card_charges/index'
      page.all('h1.Failed Charges')
      page.all('div.failed-charges',    count: 5)
    end
  end
end
