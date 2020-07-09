class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5 }
	validates :price, presence: true
end
