class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :package

  enum status: [:active, :cancelled]
end
