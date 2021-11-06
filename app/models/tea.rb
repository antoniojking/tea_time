class Tea < ApplicationRecord
  has_many :flavors
  has_many :subscriptions, through: :flavors
end
