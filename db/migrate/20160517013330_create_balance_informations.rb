class CreateBalanceInformations < ActiveRecord::Migration
  def change
    create_table :balance_informations do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
