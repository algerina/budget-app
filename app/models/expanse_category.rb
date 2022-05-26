class ExpanseCategory < ApplicationRecord

  belongs_to :category, dependent: :destroy
  belongs_to :Expanse, dependent: :destroy

end