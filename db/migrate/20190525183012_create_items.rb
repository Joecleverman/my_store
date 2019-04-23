class CreateItems < ActiveRecord::Migration[5.2]
    def change
      create_table :items do |t|
        t.integer :inventory
        t.integer :category_id
        t.string :title
        t.integer :price
      end
    end
  end