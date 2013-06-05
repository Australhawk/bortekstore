class ChangeTableName < ActiveRecord::Migration
  def up
  	rename_table :carts_items, :cart_items
  end

  def down
  	rename_table :cart_items, :carts_items
  end
end
