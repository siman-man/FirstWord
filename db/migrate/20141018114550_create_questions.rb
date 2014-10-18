class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :category

      t.timestamps
    end

    add_index :questions, :category
  end
end
