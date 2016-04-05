class CreateServicetexts < ActiveRecord::Migration
  def change
    drop_table :service_texts
    create_table :servicetexts do |t|
      t.text :title
      t.integer :service_id
      t.text :text

      t.timestamps
    end
  end
end
