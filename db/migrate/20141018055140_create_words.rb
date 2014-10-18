class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :text
      t.integer :category
      t.text :description, null: false, unique: true

      t.timestamps
    end
    
    add_index :words, :category
  end
end
