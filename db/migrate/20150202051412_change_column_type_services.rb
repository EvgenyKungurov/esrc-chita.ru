class ChangeColumnTypeServices < ActiveRecord::Migration
  def change
    change_column :services, :type_service, :text
  end
end
