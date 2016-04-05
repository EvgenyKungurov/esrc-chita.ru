class RenameColumnTypeServices < ActiveRecord::Migration
  def change
    rename_column :services, :type, :type_service
  end
end
