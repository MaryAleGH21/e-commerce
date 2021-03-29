class Order < ApplicationRecord
  belongs_to :user

  before_create :generate_number

  def generate_number
    self.number ||= loop do 
      random = "BO#{Array.new(9){rand(9)}.join }"
      break random unless self.class.exists?(number: random) 
  end
end
