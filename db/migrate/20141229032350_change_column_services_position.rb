class ChangeColumnServicesPosition < ActiveRecord::Migration
  def change
    change_column :services, :position, :text
  end
end
