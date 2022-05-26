class Category < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :expanse_categories
  has_and_belongs_to_many  :expanses
  validates_presence_of :name
  validates :icon, url: true
 
  def total_amount
    activities.sum(:amount)
  end
end
