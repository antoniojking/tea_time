class Customer < ApplicationRecord
  has_many :plans
  has_many :subscriptions, through: :plans
end
