class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, :force => true do |t|
      t.string :name

      t.timestamps
    end
  end
end
