class ChangeTitleFormatInFilials < ActiveRecord::Migration
  def up
    change_column :filials, :title, :text
  end
  def down
    change_column :filials, :title, :string
  end
end
