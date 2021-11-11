class AddPackagesToFlavor < ActiveRecord::Migration[5.2]
  def change
    add_reference :flavors, :package, foreign_key: true
  end
end
