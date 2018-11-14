class Trip < ApplicationRecord
  belongs_to :driver, optional: true
  belongs_to :client
end
