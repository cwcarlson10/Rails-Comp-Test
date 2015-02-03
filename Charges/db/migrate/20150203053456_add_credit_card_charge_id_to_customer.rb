class AddCreditCardChargeIdToCustomer < ActiveRecord::Migration
  def change
    add_reference :customers, :credit_card_charge, index: true
  end
end
