class AddFeaturedToProduct < ActiveRecord::Migration
  def change
    add_column :productos, :featured, :boolean
  end
end
