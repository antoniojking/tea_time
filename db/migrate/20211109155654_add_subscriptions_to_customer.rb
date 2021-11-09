class AddSubscriptionsToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :subscription, foreign_key: true
  end
end
