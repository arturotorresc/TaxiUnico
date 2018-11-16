class Trip < ApplicationRecord
  belongs_to :driver, optional: true
  belongs_to :client

  has_one :survey

  accepts_nested_attributes_for :survey
end
