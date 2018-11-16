class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trips

  after_create :set_full_name

  def set_full_name
    self.full_name = "#{first_name} #{last_name}"
  end
end
