class Cliente < ApplicationRecord
  belongs_to :pais
  has_many :articulos, dependent: :destroy
  

end
