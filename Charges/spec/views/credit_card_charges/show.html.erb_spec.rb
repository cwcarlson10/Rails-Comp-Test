require 'rails_helper'

RSpec.describe "credit_card_charges/show", :type => :view do
  before(:each) do
    @credit_card_charge = assign(:credit_card_charge, CreditCardCharge.create!(
      :paid => false,
      :amount => 1,
      :currency => "Currency",
      :refunded => false,
      :customer_id => nil,
      :disputed => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Currency/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
