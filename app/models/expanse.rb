class Expanse < ApplicationRecord

  belongs_to :author, class_name: 'User'
  has_many :expanse_categories, foreign_key: 'expanse_id', class_name: 'ExpanseCategory'


  validates_presence_of :name, :amount, :categories

end
