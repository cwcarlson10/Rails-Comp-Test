class CreateCreditCardCharges < ActiveRecord::Migration
  def change
    create_table :credit_card_charges do |t|
      t.timestamp :created
      t.boolean :paid
      t.integer :amount, precision: 8, scale: 2
      t.string :currency
      t.boolean :refunded
      t.references :customer, index: true
      t.boolean :disputed

      t.timestamps
    end
  end
end
