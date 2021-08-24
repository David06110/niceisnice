class Cashback < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  validates :cashback_amount, presence: true
  # validation de montant sitrictement positif
end
