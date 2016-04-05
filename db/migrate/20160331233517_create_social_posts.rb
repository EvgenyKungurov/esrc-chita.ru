class CreateSocialPosts < ActiveRecord::Migration
  def change
    create_table :social_posts do |t|
      t.text :title
      t.text :text
      t.integer :social_id

      t.timestamps null: false
    end
  end
end
