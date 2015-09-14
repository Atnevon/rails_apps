class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :text
      t.string :price
      t.string :integer
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
