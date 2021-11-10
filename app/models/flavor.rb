class Flavor < ApplicationRecord
  belongs_to :package
  belongs_to :tea
end
