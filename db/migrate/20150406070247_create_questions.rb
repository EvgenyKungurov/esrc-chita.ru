class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :question_group
      t.string :type
      t.string :question_text
      t.integer :position
      t.text :answer_options
      t.text :validation_rules

      t.timestamps null: false
    end
  end
end
