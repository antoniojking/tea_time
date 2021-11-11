class RemoveSubscriptionsFromFlavor < ActiveRecord::Migration[5.2]
  def change
    remove_reference :flavors, :subscription, foreign_key: true
  end
end
