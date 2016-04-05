class ChangeTitleFormatInServices < ActiveRecord::Migration
def up
    change_column :services, :title, :text
end
def down
change_column :services, :title, :string
end
end
