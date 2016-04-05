class CreateAnswerposts < ActiveRecord::Migration
  def change
    drop_table :answerposts
    create_table :answerposts do |t|
      t.text :title
      t.text :text
      t.integer :user_id
      
      t.timestamps
    end
  end
end
