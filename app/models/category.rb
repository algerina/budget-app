class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expanse_categories, foreign_key: 'category_id', class_name: 'ExpanseCategory'

  validates :name, presence: true
  validates :icon, presence: true

end
