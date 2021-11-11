class Package < ApplicationRecord
  has_many :flavors
  has_many :teas, through: :flavors
  has_many :subscriptions
end
