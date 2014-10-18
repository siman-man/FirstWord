class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :text
      t.integer :category
      t.text :description

      t.timestamps
    end
  end
end
