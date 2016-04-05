class CreateSizePays < ActiveRecord::Migration
  def change
    create_table :size_pays do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
