class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :store
      t.references :product

      t.timestamps
    end
    add_index :sales, :store_id
    add_index :sales, :product_id
  end
end
