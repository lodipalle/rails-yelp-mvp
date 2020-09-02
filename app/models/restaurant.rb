class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :category, :address, :presence => true
  validates :category, inclusion: { in: Restaurant::CATEGORY }
end



