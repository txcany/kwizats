class Grimoire < ApplicationRecord
  has_many :grimoires

  
  validates :address, :description, presence: true
end
