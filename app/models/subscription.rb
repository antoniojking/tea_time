class Subscription < ApplicationRecord
  has_many :plans
  has_many :customers, through: :plans
  has_many :flavors
  has_many :teas, through: :flavors
end
