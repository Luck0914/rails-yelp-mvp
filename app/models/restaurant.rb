class Restaurant < ApplicationRecord
  has_many :review, dependent: :destroy
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, acceptance: {accept:["chinese", "italian", "japanese", "french","belgian"]}
  validates :rating, numericality:{only_integer: true}
end
