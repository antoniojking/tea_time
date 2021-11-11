class Tea < ApplicationRecord
  has_many :flavors
  has_many :packages, through: :flavors
end
