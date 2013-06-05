class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :name
      t.integer :precio
      t.integer :stock
      t.string :foto
      t.text :description

      t.timestamps
    end
  end
end
