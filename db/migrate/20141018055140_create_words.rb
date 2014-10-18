class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.text :text
      t.string :category

      t.timestamps
    end
    
    add_index :words, :category
  end
end
