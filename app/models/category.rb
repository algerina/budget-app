class Category < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :expanse_categories, foreign_key: 'category_id', class_name: 'ExpanseCategory'

  validates :name, presence: true
  validates :icon, presence: true
  validates :total_amount, numericality: { greater_than_or_equal_to: 0 }

  def date
    "#{created_at.day}/#{created_at.month}/#{created_at.year}"
  end

  def total_amount(array)
    total = 0
    array.each do |item|
      total += item.entity.amount
    end
    total
  end
end
