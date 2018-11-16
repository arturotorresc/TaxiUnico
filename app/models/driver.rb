class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :car
  has_many :trips

  after_create :set_full_name

  accepts_nested_attributes_for :car

  def set_full_name
    self.full_name = "#{first_name} #{last_name}"
  end
end
