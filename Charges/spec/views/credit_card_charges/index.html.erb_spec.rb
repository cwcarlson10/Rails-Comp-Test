require 'rails_helper'

RSpec.describe "credit_card_charges/index", :type => :view do
  it "displays the Failed Charges list" do
    assign(:customers, [
      Customer.create!(
        :first_name => "MyString",
        :last_name => "MyString"

        )
      ])
    render
    rendered.should have_tag('h1', :count => 3)
  end
end

# RSpec.describe "events/show", :type => :view do
#   it "displays the event location" do
#     assign(:event, Event.new(:location => "Chicago"))
#     render
#     expect(rendered).to include("Chicago")
#   end
# end

# require 'rails_helper'

RSpec.describe "credit_card_charges/index", :type => :view do
  before(:each) do
    assign(:credit_card_charges, [
      Customer.create!(
        :first_name => "MyString",
        :last_name => "MyString",
        :credit_card_charge_id => nil
      ),
      CreditCardCharge.create!(
        :paid => false,
        :amount => 1,
        :currency => "Currency",
        :refunded => false,
        :customer_id => nil,
        :disputed => ""
      ),
      CreditCardCharge.create!(
        :paid => false,
        :amount => 1,
        :currency => "Currency",
        :refunded => false,
        :customer_id => nil,
        :disputed => ""
      )
    ])
  end

  it "renders a list of credit_card_charges" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
