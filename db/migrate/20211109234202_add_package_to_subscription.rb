class AddPackageToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_reference :subscriptions, :package, foreign_key: true
  end
end
