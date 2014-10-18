class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, null: false
      t.integer :order
      t.string :text

      t.timestamps
    end

    add_index :answers, :question_id
  end
end
