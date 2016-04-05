class CreateAboutes < ActiveRecord::Migration
  def change
    create_table :aboutes do |t|
      t.text :text

      t.timestamps
    end
  end
end
