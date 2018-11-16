class Car < ApplicationRecord
  belongs_to :driver, dependent: :destroy
end
