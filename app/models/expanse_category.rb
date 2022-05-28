class ExpanseCategory < ApplicationRecord
  belongs_to :expanse, class_name: 'Expanse'
  belongs_to :category, class_name: 'Category'

  after_create :update_total_expanses
end
