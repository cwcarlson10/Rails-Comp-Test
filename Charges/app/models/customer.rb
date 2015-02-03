class Customer < ActiveRecord::Base
  has_many :credit_card_charges
  validates :credit_card_charges_id, presence: true
end
