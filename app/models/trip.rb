class Trip < ApplicationRecord
  belongs_to :driver, optional: true
  belongs_to :client
  has_one :survey, dependent: :destroy, inverse_of: :trip

  enum status: [ :pending, :assigned, :completed, :cancelled ]

  accepts_nested_attributes_for :survey
end
