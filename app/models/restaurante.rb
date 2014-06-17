class Restaurante < ActiveRecord::Base
  validates :nombre, presence: true
  validates_length_of :telefono, is: 8
end
