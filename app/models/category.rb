class Category < ApplicationRecord
  belongs_to :user
  has_many :expanse_categories
  # has_many :expenses, through :expanse_categories
end
