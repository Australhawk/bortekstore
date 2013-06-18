class AddCategoryToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :category_id, :integer
  end
end
