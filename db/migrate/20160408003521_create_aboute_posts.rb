class CreateAboutePosts < ActiveRecord::Migration
  def change
    create_table :aboute_posts do |t|
      t.string :title
      t.text :text
      t.references :aboute, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
