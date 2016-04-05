class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.text :title
      t.text :text

      t.timestamps
    end
  end
end
