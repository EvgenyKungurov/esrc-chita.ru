class AddColumnTypeServices < ActiveRecord::Migration
  def change
    add_column :services, :type, :string
  end
end
