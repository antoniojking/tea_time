class RemoveCustomerFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_reference :customers, :customer, foreign_key: true
  end
end
