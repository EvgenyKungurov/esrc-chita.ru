class CreateSocialServices < ActiveRecord::Migration
  def change
    create_table :social_services do |t|
      t.string :name 

      t.timestamps null: false
    end
  end
end
